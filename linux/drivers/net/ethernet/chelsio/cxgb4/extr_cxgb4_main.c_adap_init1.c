
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct fw_caps_config_cmd {void* op_to_write; void* cfvalid_to_len16; } ;
struct TYPE_5__ {int tx_modq_map; } ;
struct TYPE_6__ {TYPE_2__ tp; } ;
struct TYPE_4__ {int egr_sz; } ;
struct adapter {int pf; TYPE_3__ params; TYPE_1__ sge; int mbox; int pdev_dev; } ;


 int CSUM_HAS_PSEUDO_HDR_F ;
 int FW_CAPS_CONFIG_CMD ;
 int FW_CMD_CAP_PF ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_caps_config_cmd) ;
 int FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ;
 int FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F ;
 int FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F ;
 int HPZ0_V (scalar_t__) ;
 int MAX_INGQ ;
 scalar_t__ PAGE_SHIFT ;
 int T4_TX_MODQ_10G_WEIGHT_DEFAULT ;
 int TP_INGRESS_CONFIG_A ;
 int TP_PIO_ADDR_A ;
 int TP_PIO_DATA_A ;
 int TP_SHIFT_CNT_A ;
 int TP_TX_MOD_CHANNEL_WEIGHT_A ;
 int TP_TX_MOD_QUEUE_REQ_MAP_A ;
 int TP_TX_MOD_QUEUE_WEIGHT0_A ;
 int TP_TX_SCHED_FIFO_A ;
 int TP_TX_SCHED_HDR_A ;
 int TP_TX_SCHED_PCMD_A ;
 int TX_MODQ_WEIGHT0_V (int ) ;
 int TX_MODQ_WEIGHT1_V (int ) ;
 int TX_MODQ_WEIGHT2_V (int ) ;
 int TX_MODQ_WEIGHT3_V (int ) ;
 int TX_MOD_QUEUE_REQ_MAP_V (int) ;
 int ULP_RX_TDDP_PSZ_A ;
 int dev_err (int ,char*) ;
 void* htonl (int) ;
 scalar_t__ is_offload (struct adapter*) ;
 int memset (struct fw_caps_config_cmd*,int ,int) ;
 int t4_cfg_pfvf (struct adapter*,int ,int ,int ,int ,int,int ,int ,int ,int,int,int,int,int ,int ) ;
 int t4_config_glbl_rss (struct adapter*,int ,int ,int) ;
 int t4_early_init (struct adapter*,int ) ;
 int t4_get_pfres (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_sge_init (struct adapter*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_caps_config_cmd*,int,struct fw_caps_config_cmd*) ;
 int t4_write_indirect (struct adapter*,int ,int ,int*,int,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int adap_init1(struct adapter *adap, struct fw_caps_config_cmd *c)
{
 u32 v;
 int ret;




 ret = t4_get_pfres(adap);
 if (ret) {
  dev_err(adap->pdev_dev,
   "Unable to retrieve resource provisioning information\n");
  return ret;
 }


 memset(c, 0, sizeof(*c));
 c->op_to_write = htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
          FW_CMD_REQUEST_F | FW_CMD_READ_F);
 c->cfvalid_to_len16 = htonl(FW_LEN16(*c));
 ret = t4_wr_mbox(adap, adap->mbox, c, sizeof(*c), c);
 if (ret < 0)
  return ret;

 c->op_to_write = htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
          FW_CMD_REQUEST_F | FW_CMD_WRITE_F);
 ret = t4_wr_mbox(adap, adap->mbox, c, sizeof(*c), ((void*)0));
 if (ret < 0)
  return ret;

 ret = t4_config_glbl_rss(adap, adap->pf,
     FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL,
     FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F |
     FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F);
 if (ret < 0)
  return ret;

 ret = t4_cfg_pfvf(adap, adap->mbox, adap->pf, 0, adap->sge.egr_sz, 64,
     MAX_INGQ, 0, 0, 4, 0xf, 0xf, 16, FW_CMD_CAP_PF,
     FW_CMD_CAP_PF);
 if (ret < 0)
  return ret;

 t4_sge_init(adap);


 t4_write_reg(adap, TP_SHIFT_CNT_A, 0x64f8849);
 t4_write_reg(adap, ULP_RX_TDDP_PSZ_A, HPZ0_V(PAGE_SHIFT - 12));
 t4_write_reg(adap, TP_PIO_ADDR_A, TP_INGRESS_CONFIG_A);
 v = t4_read_reg(adap, TP_PIO_DATA_A);
 t4_write_reg(adap, TP_PIO_DATA_A, v & ~CSUM_HAS_PSEUDO_HDR_F);


 adap->params.tp.tx_modq_map = 0xE4;
 t4_write_reg(adap, TP_TX_MOD_QUEUE_REQ_MAP_A,
       TX_MOD_QUEUE_REQ_MAP_V(adap->params.tp.tx_modq_map));


 v = 0x84218421;
 t4_write_indirect(adap, TP_PIO_ADDR_A, TP_PIO_DATA_A,
     &v, 1, TP_TX_SCHED_HDR_A);
 t4_write_indirect(adap, TP_PIO_ADDR_A, TP_PIO_DATA_A,
     &v, 1, TP_TX_SCHED_FIFO_A);
 t4_write_indirect(adap, TP_PIO_ADDR_A, TP_PIO_DATA_A,
     &v, 1, TP_TX_SCHED_PCMD_A);


 if (is_offload(adap)) {
  t4_write_reg(adap, TP_TX_MOD_QUEUE_WEIGHT0_A,
        TX_MODQ_WEIGHT0_V(16) |
        TX_MODQ_WEIGHT1_V(16) |
        TX_MODQ_WEIGHT2_V(16) |
        TX_MODQ_WEIGHT3_V(16));
  t4_write_reg(adap, TP_TX_MOD_CHANNEL_WEIGHT_A,
        TX_MODQ_WEIGHT0_V(16) |
        TX_MODQ_WEIGHT1_V(16) |
        TX_MODQ_WEIGHT2_V(16) |
        TX_MODQ_WEIGHT3_V(16));
 }


 return t4_early_init(adap, adap->pf);
}
