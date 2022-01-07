
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_init_hca_param {int global_caps; int hca_core_clock; int qpc_base; int log_num_qps; int srqc_base; int log_num_srqs; int cqc_base; int log_num_cqs; int altc_base; int auxc_base; int eqc_base; int log_num_eqs; int num_sys_eqs; int rdmarc_base; int log_rd_per_qp; scalar_t__ steering_mode; int rss_ip_frags; int mc_base; int log_mc_entry_sz; int log_mc_table_sz; int dmfs_high_steer_mode; int log_mc_hash_sz; int cqe_size; int eqe_size; int dmpt_base; int mw_enabled; int log_mpt_sz; int mtt_base; int cmpt_base; int uar_page_sz; int log_uar_sz; int phv_check_en; int dev_cap_enabled; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int * buf; } ;
typedef int __be32 ;


 int INIT_HCA_ALTC_BASE_OFFSET ;
 int INIT_HCA_AUXC_BASE_OFFSET ;
 int INIT_HCA_CACHELINE_SZ_OFFSET ;
 int INIT_HCA_CMPT_BASE_OFFSET ;
 int INIT_HCA_CQC_BASE_OFFSET ;
 int INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN ;
 int INIT_HCA_DMPT_BASE_OFFSET ;
 int INIT_HCA_EQC_BASE_OFFSET ;
 int INIT_HCA_EQE_CQE_OFFSETS ;
 int INIT_HCA_EQE_CQE_STRIDE_OFFSET ;
 int INIT_HCA_FLAGS_OFFSET ;
 int INIT_HCA_FS_A0_OFFSET ;
 int INIT_HCA_FS_BASE_OFFSET ;
 int INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET ;
 int INIT_HCA_FS_LOG_TABLE_SZ_OFFSET ;
 int INIT_HCA_LOG_CQ_OFFSET ;
 int INIT_HCA_LOG_EQ_OFFSET ;
 int INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET ;
 int INIT_HCA_LOG_MC_HASH_SZ_OFFSET ;
 int INIT_HCA_LOG_MC_TABLE_SZ_OFFSET ;
 int INIT_HCA_LOG_MPT_SZ_OFFSET ;
 int INIT_HCA_LOG_QP_OFFSET ;
 int INIT_HCA_LOG_RD_OFFSET ;
 int INIT_HCA_LOG_SRQ_OFFSET ;
 int INIT_HCA_LOG_UAR_SZ_OFFSET ;
 int INIT_HCA_MC_BASE_OFFSET ;
 int INIT_HCA_MTT_BASE_OFFSET ;
 int INIT_HCA_NUM_SYS_EQS_OFFSET ;
 int INIT_HCA_QPC_BASE_OFFSET ;
 int INIT_HCA_RDMARC_BASE_OFFSET ;
 int INIT_HCA_SRQC_BASE_OFFSET ;
 int INIT_HCA_TPT_MW_OFFSET ;
 int INIT_HCA_UAR_PAGE_SZ_OFFSET ;
 int INIT_HCA_UC_STEERING_OFFSET ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_HCA ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CQE_SIZE_MASK_STRIDE ;
 int MLX4_DEV_CAP_64B_CQE_ENABLED ;
 int MLX4_DEV_CAP_64B_EQE_ENABLED ;
 int MLX4_DEV_CAP_CQE_STRIDE_ENABLED ;
 int MLX4_DEV_CAP_EQE_STRIDE_ENABLED ;
 int MLX4_EQE_SIZE_MASK_STRIDE ;
 int MLX4_GET (int,int *,int ) ;




 scalar_t__ MLX4_STEERING_MODE_A0 ;
 scalar_t__ MLX4_STEERING_MODE_B0 ;
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_HCA_CORE_CLOCK_OFFSET ;
 int QUERY_HCA_GLOBAL_CAPS_OFFSET ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;

int mlx4_QUERY_HCA(struct mlx4_dev *dev,
     struct mlx4_init_hca_param *param)
{
 struct mlx4_cmd_mailbox *mailbox;
 __be32 *outbox;
 u64 qword_field;
 u32 dword_field;
 u16 word_field;
 u8 byte_field;
 int err;
 static const u8 a0_dmfs_query_hw_steering[] = {
  [0] = 131,
  [1] = 129,
  [2] = 128,
  [3] = 130
 };




 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 err = mlx4_cmd_box(dev, 0, mailbox->dma, 0, 0,
      MLX4_CMD_QUERY_HCA,
      MLX4_CMD_TIME_CLASS_B,
      !mlx4_is_slave(dev));
 if (err)
  goto out;

 MLX4_GET(param->global_caps, outbox, 0x04);
 MLX4_GET(param->hca_core_clock, outbox, 0x0c);



 MLX4_GET(qword_field, outbox, INIT_HCA_QPC_BASE_OFFSET);
 param->qpc_base = qword_field & ~((u64)0x1f);
 MLX4_GET(byte_field, outbox, INIT_HCA_LOG_QP_OFFSET);
 param->log_num_qps = byte_field & 0x1f;
 MLX4_GET(qword_field, outbox, INIT_HCA_SRQC_BASE_OFFSET);
 param->srqc_base = qword_field & ~((u64)0x1f);
 MLX4_GET(byte_field, outbox, INIT_HCA_LOG_SRQ_OFFSET);
 param->log_num_srqs = byte_field & 0x1f;
 MLX4_GET(qword_field, outbox, INIT_HCA_CQC_BASE_OFFSET);
 param->cqc_base = qword_field & ~((u64)0x1f);
 MLX4_GET(byte_field, outbox, INIT_HCA_LOG_CQ_OFFSET);
 param->log_num_cqs = byte_field & 0x1f;
 MLX4_GET(qword_field, outbox, INIT_HCA_ALTC_BASE_OFFSET);
 param->altc_base = qword_field;
 MLX4_GET(qword_field, outbox, INIT_HCA_AUXC_BASE_OFFSET);
 param->auxc_base = qword_field;
 MLX4_GET(qword_field, outbox, INIT_HCA_EQC_BASE_OFFSET);
 param->eqc_base = qword_field & ~((u64)0x1f);
 MLX4_GET(byte_field, outbox, INIT_HCA_LOG_EQ_OFFSET);
 param->log_num_eqs = byte_field & 0x1f;
 MLX4_GET(word_field, outbox, INIT_HCA_NUM_SYS_EQS_OFFSET);
 param->num_sys_eqs = word_field & 0xfff;
 MLX4_GET(qword_field, outbox, INIT_HCA_RDMARC_BASE_OFFSET);
 param->rdmarc_base = qword_field & ~((u64)0x1f);
 MLX4_GET(byte_field, outbox, INIT_HCA_LOG_RD_OFFSET);
 param->log_rd_per_qp = byte_field & 0x7;

 MLX4_GET(dword_field, outbox, INIT_HCA_FLAGS_OFFSET);
 if (dword_field & (1 << INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN)) {
  param->steering_mode = MLX4_STEERING_MODE_DEVICE_MANAGED;
 } else {
  MLX4_GET(byte_field, outbox, INIT_HCA_UC_STEERING_OFFSET);
  if (byte_field & 0x8)
   param->steering_mode = MLX4_STEERING_MODE_B0;
  else
   param->steering_mode = MLX4_STEERING_MODE_A0;
 }

 if (dword_field & (1 << 13))
  param->rss_ip_frags = 1;


 if (param->steering_mode == MLX4_STEERING_MODE_DEVICE_MANAGED) {
  MLX4_GET(param->mc_base, outbox, INIT_HCA_FS_BASE_OFFSET);
  MLX4_GET(byte_field, outbox, INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET);
  param->log_mc_entry_sz = byte_field & 0x1f;
  MLX4_GET(byte_field, outbox, INIT_HCA_FS_LOG_TABLE_SZ_OFFSET);
  param->log_mc_table_sz = byte_field & 0x1f;
  MLX4_GET(byte_field, outbox, INIT_HCA_FS_A0_OFFSET);
  param->dmfs_high_steer_mode =
   a0_dmfs_query_hw_steering[(byte_field >> 6) & 3];
 } else {
  MLX4_GET(param->mc_base, outbox, INIT_HCA_MC_BASE_OFFSET);
  MLX4_GET(byte_field, outbox, INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET);
  param->log_mc_entry_sz = byte_field & 0x1f;
  MLX4_GET(byte_field, outbox, INIT_HCA_LOG_MC_HASH_SZ_OFFSET);
  param->log_mc_hash_sz = byte_field & 0x1f;
  MLX4_GET(byte_field, outbox, INIT_HCA_LOG_MC_TABLE_SZ_OFFSET);
  param->log_mc_table_sz = byte_field & 0x1f;
 }


 MLX4_GET(byte_field, outbox, INIT_HCA_EQE_CQE_OFFSETS);
 if (byte_field & 0x20)
  param->dev_cap_enabled |= MLX4_DEV_CAP_64B_EQE_ENABLED;
 if (byte_field & 0x40)
  param->dev_cap_enabled |= MLX4_DEV_CAP_64B_CQE_ENABLED;


 MLX4_GET(byte_field, outbox, INIT_HCA_EQE_CQE_STRIDE_OFFSET);
 if (byte_field) {
  param->dev_cap_enabled |= MLX4_DEV_CAP_EQE_STRIDE_ENABLED;
  param->dev_cap_enabled |= MLX4_DEV_CAP_CQE_STRIDE_ENABLED;
  param->cqe_size = 1 << ((byte_field &
      MLX4_CQE_SIZE_MASK_STRIDE) + 5);
  param->eqe_size = 1 << (((byte_field &
       MLX4_EQE_SIZE_MASK_STRIDE) >> 4) + 5);
 }



 MLX4_GET(param->dmpt_base, outbox, INIT_HCA_DMPT_BASE_OFFSET);
 MLX4_GET(byte_field, outbox, INIT_HCA_TPT_MW_OFFSET);
 param->mw_enabled = byte_field >> 7;
 MLX4_GET(byte_field, outbox, INIT_HCA_LOG_MPT_SZ_OFFSET);
 param->log_mpt_sz = byte_field & 0x3f;
 MLX4_GET(param->mtt_base, outbox, INIT_HCA_MTT_BASE_OFFSET);
 MLX4_GET(param->cmpt_base, outbox, INIT_HCA_CMPT_BASE_OFFSET);



 MLX4_GET(param->uar_page_sz, outbox, INIT_HCA_UAR_PAGE_SZ_OFFSET);
 MLX4_GET(byte_field, outbox, INIT_HCA_LOG_UAR_SZ_OFFSET);
 param->log_uar_sz = byte_field & 0xf;


 MLX4_GET(byte_field, outbox, INIT_HCA_CACHELINE_SZ_OFFSET);
 if (byte_field & 0x2)
  param->phv_check_en = 1;
out:
 mlx4_free_cmd_mailbox(dev, mailbox);

 return err;
}
