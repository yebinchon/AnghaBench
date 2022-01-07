
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct nfp_app {int ctrl; int pf; } ;


 int __nfp_ctrl_tx (int ,struct sk_buff*) ;
 int priv_to_devlink (int ) ;
 int trace_devlink_hwmsg (int ,int,int ,int ,int ) ;

__attribute__((used)) static inline bool __nfp_app_ctrl_tx(struct nfp_app *app, struct sk_buff *skb)
{
 trace_devlink_hwmsg(priv_to_devlink(app->pf), 0, 0,
       skb->data, skb->len);

 return __nfp_ctrl_tx(app->ctrl, skb);
}
