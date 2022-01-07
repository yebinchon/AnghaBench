
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct dsaf_hw_stats {int tx_pkts; int * tx_pfc; int * rx_pfc; int stp_drop; int vlan_drop; int local_addr_false; int rslt_drop; int bp_drop; int crc_false; int sbm_drop; int release_buf_num; int rx_pause_frame; int rx_pkt_id; int rx_pkts; int man_pkts; int pad_drop; } ;
struct dsaf_device {int dsaf_ver; struct dsaf_hw_stats* hw_stats; } ;


 int AE_IS_VER1 (int ) ;
 size_t DSAFV2_INODE_FINAL_IN_PAUSE_NUM_0_REG ;
 size_t DSAF_INODE_BP_DISCARD_NUM_0_REG ;
 size_t DSAF_INODE_CRC_FALSE_NUM_0_REG ;
 size_t DSAF_INODE_FINAL_IN_MAN_NUM_0_REG ;
 size_t DSAF_INODE_FINAL_IN_PAUSE_NUM_0_REG ;
 size_t DSAF_INODE_FINAL_IN_PKT_NUM_0_REG ;
 size_t DSAF_INODE_IN_DATA_STP_DISC_0_REG ;
 size_t DSAF_INODE_LOCAL_ADDR_FALSE_NUM_0_REG ;
 size_t DSAF_INODE_PAD_DISCARD_NUM_0_REG ;
 size_t DSAF_INODE_RSLT_DISCARD_NUM_0_REG ;
 size_t DSAF_INODE_SBM_DROP_NUM_0_REG ;
 size_t DSAF_INODE_SBM_PID_NUM_0_REG ;
 size_t DSAF_INODE_SBM_RELS_NUM_0_REG ;
 size_t DSAF_INODE_SW_VLAN_TAG_DISC_0_REG ;
 int DSAF_PRIO_NR ;
 size_t DSAF_SERVICE_NW_NUM ;
 size_t DSAF_XOD_RCVPKT_CNT_0_REG ;
 size_t DSAF_XOD_XGE_PFC_PRIO_CNT_BASE_REG ;
 int DSAF_XOD_XGE_PFC_PRIO_CNT_OFFSET ;
 scalar_t__ dsaf_read_dev (struct dsaf_device*,size_t) ;
 size_t hns_dsaf_get_inode_prio_reg (int) ;

void hns_dsaf_update_stats(struct dsaf_device *dsaf_dev, u32 node_num)
{
 struct dsaf_hw_stats *hw_stats
  = &dsaf_dev->hw_stats[node_num];
 bool is_ver1 = AE_IS_VER1(dsaf_dev->dsaf_ver);
 int i;
 u32 reg_tmp;

 hw_stats->pad_drop += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_PAD_DISCARD_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->man_pkts += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_FINAL_IN_MAN_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->rx_pkts += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_FINAL_IN_PKT_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->rx_pkt_id += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_SBM_PID_NUM_0_REG + 0x80 * (u64)node_num);

 reg_tmp = is_ver1 ? DSAF_INODE_FINAL_IN_PAUSE_NUM_0_REG :
       DSAFV2_INODE_FINAL_IN_PAUSE_NUM_0_REG;
 hw_stats->rx_pause_frame +=
  dsaf_read_dev(dsaf_dev, reg_tmp + 0x80 * (u64)node_num);

 hw_stats->release_buf_num += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_SBM_RELS_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->sbm_drop += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_SBM_DROP_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->crc_false += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_CRC_FALSE_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->bp_drop += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_BP_DISCARD_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->rslt_drop += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_RSLT_DISCARD_NUM_0_REG + 0x80 * (u64)node_num);
 hw_stats->local_addr_false += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_LOCAL_ADDR_FALSE_NUM_0_REG + 0x80 * (u64)node_num);

 hw_stats->vlan_drop += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_SW_VLAN_TAG_DISC_0_REG + 4 * (u64)node_num);
 hw_stats->stp_drop += dsaf_read_dev(dsaf_dev,
  DSAF_INODE_IN_DATA_STP_DISC_0_REG + 4 * (u64)node_num);


 if ((node_num < DSAF_SERVICE_NW_NUM) && !is_ver1) {
  for (i = 0; i < DSAF_PRIO_NR; i++) {
   reg_tmp = hns_dsaf_get_inode_prio_reg(i);
   hw_stats->rx_pfc[i] += dsaf_read_dev(dsaf_dev,
    reg_tmp + 0x4 * (u64)node_num);
   hw_stats->tx_pfc[i] += dsaf_read_dev(dsaf_dev,
    DSAF_XOD_XGE_PFC_PRIO_CNT_BASE_REG +
    DSAF_XOD_XGE_PFC_PRIO_CNT_OFFSET * i +
    0xF0 * (u64)node_num);
  }
 }
 hw_stats->tx_pkts += dsaf_read_dev(dsaf_dev,
  DSAF_XOD_RCVPKT_CNT_0_REG + 0x90 * (u64)node_num);
}
