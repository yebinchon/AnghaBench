
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nfp_ccm {int dummy; } ;
struct nfp_app {int ctrl; } ;


 struct sk_buff* __nfp_ccm_reply (struct nfp_ccm*,int ) ;
 int nfp_ccm_free_tag (struct nfp_ccm*,int ) ;
 int nfp_ctrl_lock (int ) ;
 int nfp_ctrl_unlock (int ) ;

__attribute__((used)) static struct sk_buff *
nfp_ccm_reply_drop_tag(struct nfp_ccm *ccm, struct nfp_app *app, u16 tag)
{
 struct sk_buff *skb;

 nfp_ctrl_lock(app->ctrl);
 skb = __nfp_ccm_reply(ccm, tag);
 if (!skb)
  nfp_ccm_free_tag(ccm, tag);
 nfp_ctrl_unlock(app->ctrl);

 return skb;
}
