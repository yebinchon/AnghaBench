
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct nfp_app {TYPE_1__* type; int pf; } ;
struct TYPE_2__ {int (* ctrl_msg_rx ) (struct nfp_app*,struct sk_buff*) ;} ;


 int priv_to_devlink (int ) ;
 int stub1 (struct nfp_app*,struct sk_buff*) ;
 int trace_devlink_hwmsg (int ,int,int ,int ,int ) ;

__attribute__((used)) static inline void nfp_app_ctrl_rx(struct nfp_app *app, struct sk_buff *skb)
{
 trace_devlink_hwmsg(priv_to_devlink(app->pf), 1, 0,
       skb->data, skb->len);

 app->type->ctrl_msg_rx(app, skb);
}
