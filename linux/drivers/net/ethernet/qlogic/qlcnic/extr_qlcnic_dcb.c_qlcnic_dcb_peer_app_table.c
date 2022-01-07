
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_dcb_cee {struct qlcnic_dcb_app* app; } ;
struct qlcnic_dcb_app {int protocol; int priority; int selector; int valid; } ;
struct qlcnic_adapter {TYPE_2__* dcb; } ;
struct net_device {int dummy; } ;
struct dcb_app {int protocol; int priority; int selector; } ;
struct TYPE_4__ {TYPE_1__* cfg; int state; } ;
struct TYPE_3__ {struct qlcnic_dcb_cee* type; } ;


 int QLCNIC_DCB_STATE ;
 int QLC_DCB_MAX_APP ;
 size_t QLC_DCB_PEER_IDX ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_dcb_peer_app_table(struct net_device *netdev,
         struct dcb_app *table)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_dcb_cee *peer;
 struct qlcnic_dcb_app *app;
 int i, j;

 if (!test_bit(QLCNIC_DCB_STATE, &adapter->dcb->state))
  return 0;

 peer = &adapter->dcb->cfg->type[QLC_DCB_PEER_IDX];

 for (i = 0, j = 0; i < QLC_DCB_MAX_APP; i++) {
  app = &peer->app[i];
  if (!app->valid)
   continue;

  table[j].selector = app->selector;
  table[j].priority = app->priority;
  table[j++].protocol = app->protocol;
 }

 return 0;
}
