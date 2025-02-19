
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct nfp_ccm_hdr {int type; int tag; int ver; } ;
struct nfp_ccm {struct nfp_app* app; } ;
struct nfp_app {int ctrl; } ;
typedef enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;


 int EIO ;
 struct sk_buff* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFP_CCM_ABI_VERSION ;
 int __NFP_CCM_REPLY (int) ;
 int __nfp_app_ctrl_tx (struct nfp_app*,struct sk_buff*) ;
 int ccm_warn (struct nfp_app*,char*,int,unsigned int,...) ;
 int cpu_to_be16 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int nfp_ccm_alloc_tag (struct nfp_ccm*) ;
 int nfp_ccm_get_type (struct sk_buff*) ;
 struct sk_buff* nfp_ccm_wait_reply (struct nfp_ccm*,struct nfp_app*,int,int) ;
 int nfp_ctrl_lock (int ) ;
 int nfp_ctrl_unlock (int ) ;

struct sk_buff *
nfp_ccm_communicate(struct nfp_ccm *ccm, struct sk_buff *skb,
      enum nfp_ccm_type type, unsigned int reply_size)
{
 struct nfp_app *app = ccm->app;
 struct nfp_ccm_hdr *hdr;
 int reply_type, tag;

 nfp_ctrl_lock(app->ctrl);
 tag = nfp_ccm_alloc_tag(ccm);
 if (tag < 0) {
  nfp_ctrl_unlock(app->ctrl);
  dev_kfree_skb_any(skb);
  return ERR_PTR(tag);
 }

 hdr = (void *)skb->data;
 hdr->ver = NFP_CCM_ABI_VERSION;
 hdr->type = type;
 hdr->tag = cpu_to_be16(tag);

 __nfp_app_ctrl_tx(app, skb);

 nfp_ctrl_unlock(app->ctrl);

 skb = nfp_ccm_wait_reply(ccm, app, type, tag);
 if (IS_ERR(skb))
  return skb;

 reply_type = nfp_ccm_get_type(skb);
 if (reply_type != __NFP_CCM_REPLY(type)) {
  ccm_warn(app, "cmsg drop - wrong type 0x%02x != 0x%02lx!\n",
    reply_type, __NFP_CCM_REPLY(type));
  goto err_free;
 }

 if (reply_size && skb->len != reply_size) {
  ccm_warn(app, "cmsg drop - type 0x%02x wrong size %d != %d!\n",
    type, skb->len, reply_size);
  goto err_free;
 }

 return skb;
err_free:
 dev_kfree_skb_any(skb);
 return ERR_PTR(-EIO);
}
