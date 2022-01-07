
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx; int idx; int vf_id; int msg; } ;
union nic_mbx {TYPE_1__ bgx_stats; } ;
struct nicvf {int vf_id; int netdev; } ;


 int BGX_RX_STATS_COUNT ;
 int BGX_TX_STATS_COUNT ;
 int NIC_MBOX_MSG_BGX_STATS ;
 int netif_running (int ) ;
 scalar_t__ nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

void nicvf_update_lmac_stats(struct nicvf *nic)
{
 int stat = 0;
 union nic_mbx mbx = {};

 if (!netif_running(nic->netdev))
  return;

 mbx.bgx_stats.msg = NIC_MBOX_MSG_BGX_STATS;
 mbx.bgx_stats.vf_id = nic->vf_id;

 mbx.bgx_stats.rx = 1;
 while (stat < BGX_RX_STATS_COUNT) {
  mbx.bgx_stats.idx = stat;
  if (nicvf_send_msg_to_pf(nic, &mbx))
   return;
  stat++;
 }

 stat = 0;


 mbx.bgx_stats.rx = 0;
 while (stat < BGX_TX_STATS_COUNT) {
  mbx.bgx_stats.idx = stat;
  if (nicvf_send_msg_to_pf(nic, &mbx))
   return;
  stat++;
 }
}
