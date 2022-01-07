
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct qlcnic_dcb_cee {TYPE_4__* tc_cfg; TYPE_3__* pg_cfg; } ;
struct qlcnic_adapter {TYPE_2__* dcb; } ;
struct net_device {int dummy; } ;
struct cee_pg {size_t* prio_pg; int * pg_bw; } ;
struct TYPE_8__ {size_t pgid; size_t up_tc_map; scalar_t__ valid; } ;
struct TYPE_7__ {int total_bw_percent; int valid; } ;
struct TYPE_6__ {TYPE_1__* cfg; int state; } ;
struct TYPE_5__ {struct qlcnic_dcb_cee* type; } ;


 int QLCNIC_DCB_STATE ;
 size_t QLC_DCB_MAX_PG ;
 size_t QLC_DCB_MAX_TC ;
 size_t QLC_DCB_PEER_IDX ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_dcb_cee_peer_get_pg(struct net_device *netdev,
          struct cee_pg *pg)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_dcb_cee *peer;
 u8 i, j, k, map;

 if (!test_bit(QLCNIC_DCB_STATE, &adapter->dcb->state))
  return 0;

 peer = &adapter->dcb->cfg->type[QLC_DCB_PEER_IDX];

 for (i = 0, j = 0; i < QLC_DCB_MAX_PG; i++) {
  if (!peer->pg_cfg[i].valid)
   continue;

  pg->pg_bw[j] = peer->pg_cfg[i].total_bw_percent;

  for (k = 0; k < QLC_DCB_MAX_TC; k++) {
   if (peer->tc_cfg[i].valid &&
       (peer->tc_cfg[i].pgid == i)) {
    map = peer->tc_cfg[i].up_tc_map;
    pg->prio_pg[j++] = map;
    break;
   }
  }
 }

 return 0;
}
