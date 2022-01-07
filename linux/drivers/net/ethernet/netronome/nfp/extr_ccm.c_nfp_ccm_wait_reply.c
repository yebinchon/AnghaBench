
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_ccm {int wq; } ;
struct nfp_app {int dummy; } ;
typedef enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;


 int ERESTARTSYS ;
 struct sk_buff* ERR_PTR (int) ;
 int ETIMEDOUT ;
 int ccm_warn (struct nfp_app*,char*,...) ;
 int msecs_to_jiffies (int) ;
 struct sk_buff* nfp_ccm_reply (struct nfp_ccm*,struct nfp_app*,int) ;
 struct sk_buff* nfp_ccm_reply_drop_tag (struct nfp_ccm*,struct nfp_app*,int) ;
 int udelay (int) ;
 int wait_event_interruptible_timeout (int ,struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *
nfp_ccm_wait_reply(struct nfp_ccm *ccm, struct nfp_app *app,
     enum nfp_ccm_type type, int tag)
{
 struct sk_buff *skb;
 int i, err;

 for (i = 0; i < 50; i++) {
  udelay(4);
  skb = nfp_ccm_reply(ccm, app, tag);
  if (skb)
   return skb;
 }

 err = wait_event_interruptible_timeout(ccm->wq,
            skb = nfp_ccm_reply(ccm, app,
           tag),
            msecs_to_jiffies(5000));



 if (!skb)
  skb = nfp_ccm_reply_drop_tag(ccm, app, tag);
 if (err < 0) {
  ccm_warn(app, "%s waiting for response to 0x%02x: %d\n",
    err == ERESTARTSYS ? "interrupted" : "error",
    type, err);
  return ERR_PTR(err);
 }
 if (!skb) {
  ccm_warn(app, "timeout waiting for response to 0x%02x\n", type);
  return ERR_PTR(-ETIMEDOUT);
 }

 return skb;
}
