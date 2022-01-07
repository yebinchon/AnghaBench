
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; int pf; } ;
struct TYPE_2__ {int (* ctrl_msg_rx_raw ) (struct nfp_app*,void const*,unsigned int) ;} ;


 int priv_to_devlink (int ) ;
 int stub1 (struct nfp_app*,void const*,unsigned int) ;
 int trace_devlink_hwmsg (int ,int,int ,void const*,unsigned int) ;

__attribute__((used)) static inline void
nfp_app_ctrl_rx_raw(struct nfp_app *app, const void *data, unsigned int len)
{
 if (!app || !app->type->ctrl_msg_rx_raw)
  return;

 trace_devlink_hwmsg(priv_to_devlink(app->pf), 1, 0, data, len);
 app->type->ctrl_msg_rx_raw(app, data, len);
}
