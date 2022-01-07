
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nfp_ccm_hdr {int dummy; } ;
struct nfp_ccm {int wq; int replies; int tag_allocator; struct nfp_app* app; } ;
struct nfp_app {int ctrl; } ;


 int __skb_queue_tail (int *,struct sk_buff*) ;
 int ccm_warn (struct nfp_app*,char*,unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 unsigned int nfp_ccm_get_tag (struct sk_buff*) ;
 int nfp_ctrl_lock (int ) ;
 int nfp_ctrl_unlock (int ) ;
 int test_bit (unsigned int,int ) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible_all (int *) ;

void nfp_ccm_rx(struct nfp_ccm *ccm, struct sk_buff *skb)
{
 struct nfp_app *app = ccm->app;
 unsigned int tag;

 if (unlikely(skb->len < sizeof(struct nfp_ccm_hdr))) {
  ccm_warn(app, "cmsg drop - too short %d!\n", skb->len);
  goto err_free;
 }

 nfp_ctrl_lock(app->ctrl);

 tag = nfp_ccm_get_tag(skb);
 if (unlikely(!test_bit(tag, ccm->tag_allocator))) {
  ccm_warn(app, "cmsg drop - no one is waiting for tag %u!\n",
    tag);
  goto err_unlock;
 }

 __skb_queue_tail(&ccm->replies, skb);
 wake_up_interruptible_all(&ccm->wq);

 nfp_ctrl_unlock(app->ctrl);
 return;

err_unlock:
 nfp_ctrl_unlock(app->ctrl);
err_free:
 dev_kfree_skb_any(skb);
}
