
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dsaf_hw_stats {int tx_pkts; int * tx_pfc; int * rx_pfc; int stp_drop; int vlan_drop; int local_addr_false; int rslt_drop; int bp_drop; int crc_false; int sbm_drop; int release_buf_num; int rx_pause_frame; int rx_pkt_id; int rx_pkts; int man_pkts; int pad_drop; } ;
struct dsaf_device {int dsaf_ver; struct dsaf_hw_stats* hw_stats; } ;


 int AE_IS_VER1 (int ) ;
 int DSAF_PRIO_NR ;
 int DSAF_SERVICE_NW_NUM ;

__attribute__((used)) static u64 *hns_dsaf_get_node_stats(struct dsaf_device *ddev, u64 *data,
        int node_num)
{
 u64 *p = data;
 int i;
 struct dsaf_hw_stats *hw_stats = &ddev->hw_stats[node_num];
 bool is_ver1 = AE_IS_VER1(ddev->dsaf_ver);

 p[0] = hw_stats->pad_drop;
 p[1] = hw_stats->man_pkts;
 p[2] = hw_stats->rx_pkts;
 p[3] = hw_stats->rx_pkt_id;
 p[4] = hw_stats->rx_pause_frame;
 p[5] = hw_stats->release_buf_num;
 p[6] = hw_stats->sbm_drop;
 p[7] = hw_stats->crc_false;
 p[8] = hw_stats->bp_drop;
 p[9] = hw_stats->rslt_drop;
 p[10] = hw_stats->local_addr_false;
 p[11] = hw_stats->vlan_drop;
 p[12] = hw_stats->stp_drop;
 if (node_num < DSAF_SERVICE_NW_NUM && !is_ver1) {
  for (i = 0; i < DSAF_PRIO_NR; i++) {
   p[13 + i + 0 * DSAF_PRIO_NR] = hw_stats->rx_pfc[i];
   p[13 + i + 1 * DSAF_PRIO_NR] = hw_stats->tx_pfc[i];
  }
  p[29] = hw_stats->tx_pkts;
  return &p[30];
 }

 p[13] = hw_stats->tx_pkts;
 return &p[14];
}
