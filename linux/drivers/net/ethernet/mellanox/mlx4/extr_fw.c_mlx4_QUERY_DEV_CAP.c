
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int num_rates; int max_val; int max_unit; int min_val; int min_unit; } ;
struct mlx4_dev_cap {int reserved_qps; int max_qps; int reserved_srqs; int max_srqs; int max_cq_sz; int reserved_cqs; int max_cqs; int max_mpts; int reserved_eqs; int max_eqs; int reserved_mtts; int reserved_mrws; int num_sys_eqs; int max_requester_per_qp; int max_responder_per_qp; int max_gso_sz; int max_rss_tbl_sz; int max_rdma_global; int local_ca_ack_delay; int num_ports; int max_msg_sz; int fs_log_max_ucast_qp_range_size; int fs_max_num_qp_per_entry; int stat_rate_support; int flags; int* wol_port; int reserved_uars; int uar_size; int min_page_sz; int bf_reg_size; int bf_regs_per_page; int max_sq_sg; int max_sq_desc_sz; int max_qp_per_mcg; int reserved_mgms; int max_mcgs; int reserved_pds; int max_pds; int reserved_xrcds; int max_xrcds; int rdmarc_entry_sz; int qpc_entry_sz; int aux_entry_sz; int altc_entry_sz; int eqc_entry_sz; int cqc_entry_sz; int srq_entry_sz; int cmpt_entry_sz; int mtt_entry_sz; int dmpt_entry_sz; int max_srq_sz; int max_qp_sz; int resize_srq; int max_rq_sg; int max_rq_desc_sz; int bmme_flags; int reserved_lkey; int max_icm_sz; int max_counters; int dmfs_high_rate_qpn_base; int dmfs_high_rate_qpn_range; int health_buffer_addrs; int flags2; scalar_t__ port_cap; TYPE_1__ rl_caps; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int* buf; int dma; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MGM_QPN_MASK ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_QUERY_DEV_CAP ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_DEV_CAP_FLAG2_80_VFS ;
 int MLX4_DEV_CAP_FLAG2_CONFIG_DEV ;
 int MLX4_DEV_CAP_FLAG2_CQE_STRIDE ;
 int MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT ;
 int MLX4_DEV_CAP_FLAG2_DMFS_IPOIB ;
 int MLX4_DEV_CAP_FLAG2_DMFS_UC_MC_SNIFFER ;
 int MLX4_DEV_CAP_FLAG2_DRIVER_VERSION_TO_FW ;
 int MLX4_DEV_CAP_FLAG2_EQE_STRIDE ;
 int MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP ;
 int MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL ;
 int MLX4_DEV_CAP_FLAG2_ETS_CFG ;
 int MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN ;
 int MLX4_DEV_CAP_FLAG2_FSM ;
 int MLX4_DEV_CAP_FLAG2_FS_EN ;
 int MLX4_DEV_CAP_FLAG2_IGNORE_FCS ;
 int MLX4_DEV_CAP_FLAG2_LB_SRC_CHK ;
 int MLX4_DEV_CAP_FLAG2_MAD_DEMUX ;
 int MLX4_DEV_CAP_FLAG2_PHV_EN ;
 int MLX4_DEV_CAP_FLAG2_PORT_BEACON ;
 int MLX4_DEV_CAP_FLAG2_PORT_REMAP ;
 int MLX4_DEV_CAP_FLAG2_QCN ;
 int MLX4_DEV_CAP_FLAG2_QOS_VPP ;
 int MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT ;
 int MLX4_DEV_CAP_FLAG2_REASSIGN_MAC_EN ;
 int MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT ;
 int MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 ;
 int MLX4_DEV_CAP_FLAG2_RSS ;
 int MLX4_DEV_CAP_FLAG2_RSS_TOP ;
 int MLX4_DEV_CAP_FLAG2_RSS_XOR ;
 int MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN ;
 int MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT ;
 int MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP ;
 int MLX4_DEV_CAP_FLAG2_SW_CQ_INIT ;
 int MLX4_DEV_CAP_FLAG2_SYS_EQS ;
 int MLX4_DEV_CAP_FLAG2_TS ;
 int MLX4_DEV_CAP_FLAG2_UPDATE_QP ;
 int MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB ;
 int MLX4_DEV_CAP_FLAG2_USER_MAC_EN ;
 int MLX4_DEV_CAP_FLAG2_VLAN_CONTROL ;
 int MLX4_DEV_CAP_FLAG2_VXLAN_OFFLOADS ;
 int MLX4_DEV_CAP_FLAG_COUNTERS ;
 int MLX4_FLAG_PORT_REMAP ;
 int MLX4_FLAG_ROCE_V1_V2 ;
 int MLX4_GET (int,int*,int ) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_DEV_CAP_ACK_DELAY_OFFSET ;
 int QUERY_DEV_CAP_ALTC_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_AUX_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_BF_OFFSET ;
 int QUERY_DEV_CAP_BMME_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_CONFIG_DEV_OFFSET ;
 int QUERY_DEV_CAP_CQC_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_CQ_EQ_CACHE_LINE_STRIDE ;
 int QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET ;
 int QUERY_DEV_CAP_C_MPT_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_DIAG_RPRT_PER_PORT ;
 int QUERY_DEV_CAP_DMFS_HIGH_RATE_QPN_BASE_OFFSET ;
 int QUERY_DEV_CAP_DMFS_HIGH_RATE_QPN_RANGE_OFFSET ;
 int QUERY_DEV_CAP_D_MPT_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_ECN_QCN_VER_OFFSET ;
 int QUERY_DEV_CAP_EQC_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_ETH_BACKPL_OFFSET ;
 int QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_EXT_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_FLOW_STEERING_IPOIB_OFFSET ;
 int QUERY_DEV_CAP_FLOW_STEERING_MAX_QP_OFFSET ;
 int QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET ;
 int QUERY_DEV_CAP_FW_REASSIGN_MAC ;
 int QUERY_DEV_CAP_HEALTH_BUFFER_ADDRESS_OFFSET ;
 int QUERY_DEV_CAP_LOG_BF_REG_SZ_OFFSET ;
 int QUERY_DEV_CAP_LOG_MAX_BF_REGS_PER_PAGE_OFFSET ;
 int QUERY_DEV_CAP_MAD_DEMUX_OFFSET ;
 int QUERY_DEV_CAP_MAX_COUNTERS_OFFSET ;
 int QUERY_DEV_CAP_MAX_CQ_OFFSET ;
 int QUERY_DEV_CAP_MAX_CQ_SZ_OFFSET ;
 int QUERY_DEV_CAP_MAX_DESC_SZ_RQ_OFFSET ;
 int QUERY_DEV_CAP_MAX_DESC_SZ_SQ_OFFSET ;
 int QUERY_DEV_CAP_MAX_EQ_OFFSET ;
 int QUERY_DEV_CAP_MAX_GSO_OFFSET ;
 int QUERY_DEV_CAP_MAX_ICM_SZ_OFFSET ;
 int QUERY_DEV_CAP_MAX_MCG_OFFSET ;
 int QUERY_DEV_CAP_MAX_MPT_OFFSET ;
 int QUERY_DEV_CAP_MAX_MSG_SZ_OFFSET ;
 int QUERY_DEV_CAP_MAX_PD_OFFSET ;
 int QUERY_DEV_CAP_MAX_QP_MCG_OFFSET ;
 int QUERY_DEV_CAP_MAX_QP_OFFSET ;
 int QUERY_DEV_CAP_MAX_QP_SZ_OFFSET ;
 int QUERY_DEV_CAP_MAX_RDMA_OFFSET ;
 int QUERY_DEV_CAP_MAX_REQ_QP_OFFSET ;
 int QUERY_DEV_CAP_MAX_RES_QP_OFFSET ;
 int QUERY_DEV_CAP_MAX_SG_RQ_OFFSET ;
 int QUERY_DEV_CAP_MAX_SG_SQ_OFFSET ;
 int QUERY_DEV_CAP_MAX_SRQ_OFFSET ;
 int QUERY_DEV_CAP_MAX_SRQ_SZ_OFFSET ;
 int QUERY_DEV_CAP_MAX_XRC_OFFSET ;
 int QUERY_DEV_CAP_MTT_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_NUM_SYS_EQ_OFFSET ;
 int QUERY_DEV_CAP_PAGE_SZ_OFFSET ;
 int QUERY_DEV_CAP_PHV_EN_OFFSET ;
 int QUERY_DEV_CAP_PORT_BEACON_OFFSET ;
 int QUERY_DEV_CAP_PORT_FLOWSTATS_COUNTERS_OFFSET ;
 int QUERY_DEV_CAP_QPC_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_QP_RATE_LIMIT_MAX_OFFSET ;
 int QUERY_DEV_CAP_QP_RATE_LIMIT_MIN_OFFSET ;
 int QUERY_DEV_CAP_QP_RATE_LIMIT_NUM_OFFSET ;
 int QUERY_DEV_CAP_RATE_SUPPORT_OFFSET ;
 int QUERY_DEV_CAP_RDMARC_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_RSS_OFFSET ;
 int QUERY_DEV_CAP_RSVD_CQ_OFFSET ;
 int QUERY_DEV_CAP_RSVD_EQ_OFFSET ;
 int QUERY_DEV_CAP_RSVD_LKEY_OFFSET ;
 int QUERY_DEV_CAP_RSVD_MCG_OFFSET ;
 int QUERY_DEV_CAP_RSVD_MRW_OFFSET ;
 int QUERY_DEV_CAP_RSVD_MTT_OFFSET ;
 int QUERY_DEV_CAP_RSVD_PD_OFFSET ;
 int QUERY_DEV_CAP_RSVD_QP_OFFSET ;
 int QUERY_DEV_CAP_RSVD_SRQ_OFFSET ;
 int QUERY_DEV_CAP_RSVD_UAR_OFFSET ;
 int QUERY_DEV_CAP_RSVD_XRC_OFFSET ;
 int QUERY_DEV_CAP_RSZ_SRQ_OFFSET ;
 int QUERY_DEV_CAP_SL2VL_EVENT_OFFSET ;
 int QUERY_DEV_CAP_SRQ_ENTRY_SZ_OFFSET ;
 int QUERY_DEV_CAP_SVLAN_BY_QP_OFFSET ;
 int QUERY_DEV_CAP_UAR_SZ_OFFSET ;
 int QUERY_DEV_CAP_USER_MAC_EN_OFFSET ;
 int QUERY_DEV_CAP_VL_PORT_OFFSET ;
 int QUERY_DEV_CAP_VXLAN ;
 int QUERY_DEV_CAP_WOL_OFFSET ;
 int disable_unsupported_roce_caps (int*) ;
 int max (int,int) ;
 int mlx4_QUERY_PORT (struct mlx4_dev*,int,scalar_t__) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;

int mlx4_QUERY_DEV_CAP(struct mlx4_dev *dev, struct mlx4_dev_cap *dev_cap)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 *outbox;
 u8 field;
 u32 field32, flags, ext_flags;
 u16 size;
 u16 stat_rate;
 int err;
 int i;
 dev_cap->flags2 = 0;
 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 err = mlx4_cmd_box(dev, 0, mailbox->dma, 0, 0, MLX4_CMD_QUERY_DEV_CAP,
      MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
 if (err)
  goto out;

 if (mlx4_is_mfunc(dev))
  disable_unsupported_roce_caps(outbox);
 MLX4_GET(field, outbox, 0x12);
 dev_cap->reserved_qps = 1 << (field & 0xf);
 MLX4_GET(field, outbox, 0x13);
 dev_cap->max_qps = 1 << (field & 0x1f);
 MLX4_GET(field, outbox, 0x14);
 dev_cap->reserved_srqs = 1 << (field >> 4);
 MLX4_GET(field, outbox, 0x15);
 dev_cap->max_srqs = 1 << (field & 0x1f);
 MLX4_GET(field, outbox, 0x19);
 dev_cap->max_cq_sz = 1 << field;
 MLX4_GET(field, outbox, 0x1a);
 dev_cap->reserved_cqs = 1 << (field & 0xf);
 MLX4_GET(field, outbox, 0x1b);
 dev_cap->max_cqs = 1 << (field & 0x1f);
 MLX4_GET(field, outbox, 0x1d);
 dev_cap->max_mpts = 1 << (field & 0x3f);
 MLX4_GET(field, outbox, 0x1e);
 dev_cap->reserved_eqs = 1 << (field & 0xf);
 MLX4_GET(field, outbox, 0x1f);
 dev_cap->max_eqs = 1 << (field & 0xf);
 MLX4_GET(field, outbox, 0x20);
 dev_cap->reserved_mtts = 1 << (field >> 4);
 MLX4_GET(field, outbox, 0x22);
 dev_cap->reserved_mrws = 1 << (field & 0xf);
 MLX4_GET(size, outbox, 0x26);
 dev_cap->num_sys_eqs = size & 0xfff;
 MLX4_GET(field, outbox, 0x29);
 dev_cap->max_requester_per_qp = 1 << (field & 0x3f);
 MLX4_GET(field, outbox, 0x2b);
 dev_cap->max_responder_per_qp = 1 << (field & 0x3f);
 MLX4_GET(field, outbox, 0x2d);
 field &= 0x1f;
 if (!field)
  dev_cap->max_gso_sz = 0;
 else
  dev_cap->max_gso_sz = 1 << field;

 MLX4_GET(field, outbox, 0x2e);
 if (field & 0x20)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_RSS_XOR;
 if (field & 0x10)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_RSS_TOP;
 field &= 0xf;
 if (field) {
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_RSS;
  dev_cap->max_rss_tbl_sz = 1 << field;
 } else
  dev_cap->max_rss_tbl_sz = 0;
 MLX4_GET(field, outbox, 0x2f);
 dev_cap->max_rdma_global = 1 << (field & 0x3f);
 MLX4_GET(field, outbox, 0x35);
 dev_cap->local_ca_ack_delay = field & 0x1f;
 MLX4_GET(field, outbox, 0x37);
 dev_cap->num_ports = field & 0xf;
 MLX4_GET(field, outbox, 0x38);
 dev_cap->max_msg_sz = 1 << (field & 0x1f);
 MLX4_GET(field, outbox, 0x70);
 if (field & 0x10)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN;
 MLX4_GET(field, outbox, 0x76);
 if (field & 0x80)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_FS_EN;
 dev_cap->fs_log_max_ucast_qp_range_size = field & 0x1f;
 if (field & 0x20)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_DMFS_UC_MC_SNIFFER;
 MLX4_GET(field, outbox, 0x34);
 if (field & 0x80)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_PORT_BEACON;
 MLX4_GET(field, outbox, 0x74);
 if (field & 0x80)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_DMFS_IPOIB;
 MLX4_GET(field, outbox, 0x77);
 dev_cap->fs_max_num_qp_per_entry = field;
 MLX4_GET(field, outbox, 0x78);
 if (field & (1 << 5))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT;
 MLX4_GET(field, outbox, 0x7b);
 if (field & 0x1)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_QCN;
 MLX4_GET(stat_rate, outbox, 0x3c);
 dev_cap->stat_rate_support = stat_rate;
 MLX4_GET(field, outbox, 0x3e);
 if (field & 0x80)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_TS;
 MLX4_GET(ext_flags, outbox, 0x40);
 MLX4_GET(flags, outbox, 0x44);
 dev_cap->flags = flags | (u64)ext_flags << 32;
 MLX4_GET(field, outbox, 0x43);
 dev_cap->wol_port[1] = !!(field & 0x20);
 dev_cap->wol_port[2] = !!(field & 0x40);
 MLX4_GET(field, outbox, 0x48);
 dev_cap->reserved_uars = field >> 4;
 MLX4_GET(field, outbox, 0x49);
 dev_cap->uar_size = 1 << ((field & 0x3f) + 20);
 MLX4_GET(field, outbox, 0x4b);
 dev_cap->min_page_sz = 1 << field;

 MLX4_GET(field, outbox, 0x4c);
 if (field & 0x80) {
  MLX4_GET(field, outbox, 0x4d);
  dev_cap->bf_reg_size = 1 << (field & 0x1f);
  MLX4_GET(field, outbox, 0x4e);
  if ((1 << (field & 0x3f)) > (PAGE_SIZE / dev_cap->bf_reg_size))
   field = 3;
  dev_cap->bf_regs_per_page = 1 << (field & 0x3f);
 } else {
  dev_cap->bf_reg_size = 0;
 }

 MLX4_GET(field, outbox, 0x51);
 dev_cap->max_sq_sg = field;
 MLX4_GET(size, outbox, 0x52);
 dev_cap->max_sq_desc_sz = size;

 MLX4_GET(field, outbox, 0x5C);
 if (field & (1 << 2))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_USER_MAC_EN;
 MLX4_GET(field, outbox, 0x5D);
 if (field & 0x1)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP;
 MLX4_GET(field, outbox, 0x61);
 dev_cap->max_qp_per_mcg = 1 << field;
 MLX4_GET(field, outbox, 0x62);
 dev_cap->reserved_mgms = field & 0xf;
 MLX4_GET(field, outbox, 0x63);
 dev_cap->max_mcgs = 1 << field;
 MLX4_GET(field, outbox, 0x64);
 dev_cap->reserved_pds = field >> 4;
 MLX4_GET(field, outbox, 0x65);
 dev_cap->max_pds = 1 << (field & 0x3f);
 MLX4_GET(field, outbox, 0x66);
 dev_cap->reserved_xrcds = field >> 4;
 MLX4_GET(field, outbox, 0x67);
 dev_cap->max_xrcds = 1 << (field & 0x1f);

 MLX4_GET(size, outbox, 0x80);
 dev_cap->rdmarc_entry_sz = size;
 MLX4_GET(size, outbox, 0x82);
 dev_cap->qpc_entry_sz = size;
 MLX4_GET(size, outbox, 0x84);
 dev_cap->aux_entry_sz = size;
 MLX4_GET(size, outbox, 0x86);
 dev_cap->altc_entry_sz = size;
 MLX4_GET(size, outbox, 0x88);
 dev_cap->eqc_entry_sz = size;
 MLX4_GET(size, outbox, 0x8a);
 dev_cap->cqc_entry_sz = size;
 MLX4_GET(size, outbox, 0x8c);
 dev_cap->srq_entry_sz = size;
 MLX4_GET(size, outbox, 0x8e);
 dev_cap->cmpt_entry_sz = size;
 MLX4_GET(size, outbox, 0x90);
 dev_cap->mtt_entry_sz = size;
 MLX4_GET(size, outbox, 0x92);
 dev_cap->dmpt_entry_sz = size;

 MLX4_GET(field, outbox, 0x10);
 dev_cap->max_srq_sz = 1 << field;
 MLX4_GET(field, outbox, 0x11);
 dev_cap->max_qp_sz = 1 << field;
 MLX4_GET(field, outbox, 0x33);
 dev_cap->resize_srq = field & 1;
 MLX4_GET(field, outbox, 0x55);
 dev_cap->max_rq_sg = field;
 MLX4_GET(size, outbox, 0x56);
 dev_cap->max_rq_desc_sz = size;
 MLX4_GET(field, outbox, 0x7a);
 if (field & (1 << 4))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_QOS_VPP;
 if (field & (1 << 5))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL;
 if (field & (1 << 6))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_CQE_STRIDE;
 if (field & (1 << 7))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_EQE_STRIDE;
 MLX4_GET(dev_cap->bmme_flags, outbox,
   0x94);
 if (dev_cap->bmme_flags & MLX4_FLAG_ROCE_V1_V2)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_ROCE_V1_V2;
 if (dev_cap->bmme_flags & MLX4_FLAG_PORT_REMAP)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_PORT_REMAP;
 MLX4_GET(field, outbox, 0x94);
 if (field & 0x20)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_CONFIG_DEV;
 if (field & (1 << 2))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_IGNORE_FCS;
 MLX4_GET(field, outbox, 0x96);
 if (field & 0x80)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_PHV_EN;
 if (field & 0x40)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN;

 MLX4_GET(dev_cap->reserved_lkey, outbox,
   0x98);
 MLX4_GET(field32, outbox, 0x9c);
 if (field32 & (1 << 0))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP;
 if (field32 & (1 << 7))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT;
 if (field32 & (1 << 8))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_DRIVER_VERSION_TO_FW;
 MLX4_GET(field32, outbox, 0x9c);
 if (field32 & (1 << 17))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT;
 MLX4_GET(field, outbox, 0x9d);
 if (field & 1<<6)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_REASSIGN_MAC_EN;
 MLX4_GET(field, outbox, 0x9e);
 if (field & 1<<3)
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_VXLAN_OFFLOADS;
 if (field & (1 << 5))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_ETS_CFG;
 MLX4_GET(dev_cap->max_icm_sz, outbox,
   0xa0);
 if (dev_cap->flags & MLX4_DEV_CAP_FLAG_COUNTERS)
  MLX4_GET(dev_cap->max_counters, outbox,
    0x68);

 MLX4_GET(field32, outbox,
   0xb0);
 if (field32 & (1 << 0))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_MAD_DEMUX;

 MLX4_GET(dev_cap->dmfs_high_rate_qpn_base, outbox,
   0xa8);
 dev_cap->dmfs_high_rate_qpn_base &= MGM_QPN_MASK;
 MLX4_GET(dev_cap->dmfs_high_rate_qpn_range, outbox,
   0xac);
 dev_cap->dmfs_high_rate_qpn_range &= MGM_QPN_MASK;

 MLX4_GET(size, outbox, 0xcc);
 dev_cap->rl_caps.num_rates = size;
 if (dev_cap->rl_caps.num_rates) {
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT;
  MLX4_GET(size, outbox, 0xd0);
  dev_cap->rl_caps.max_val = size & 0xfff;
  dev_cap->rl_caps.max_unit = size >> 14;
  MLX4_GET(size, outbox, 0xd2);
  dev_cap->rl_caps.min_val = size & 0xfff;
  dev_cap->rl_caps.min_unit = size >> 14;
 }

 MLX4_GET(dev_cap->health_buffer_addrs, outbox,
   0xe4);

 MLX4_GET(field32, outbox, 0x70);
 if (field32 & (1 << 16))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_UPDATE_QP;
 if (field32 & (1 << 18))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB;
 if (field32 & (1 << 19))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_LB_SRC_CHK;
 if (field32 & (1 << 26))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_VLAN_CONTROL;
 if (field32 & (1 << 20))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_FSM;
 if (field32 & (1 << 21))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_80_VFS;
 if (field32 & (1 << 23))
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_SW_CQ_INIT;

 for (i = 1; i <= dev_cap->num_ports; i++) {
  err = mlx4_QUERY_PORT(dev, i, dev_cap->port_cap + i);
  if (err)
   goto out;
 }






 if (dev_cap->num_sys_eqs == 0)
  dev_cap->reserved_eqs = max(dev_cap->reserved_uars * 4,
         dev_cap->reserved_eqs);
 else
  dev_cap->flags2 |= MLX4_DEV_CAP_FLAG2_SYS_EQS;

out:
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
