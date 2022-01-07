
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hnae3_ae_dev {int hw_err_reset_req; } ;
struct hclge_dev {int hw; TYPE_1__* pdev; struct hnae3_ae_dev* ae_dev; } ;
struct hclge_desc {int * data; } ;
struct device {int dummy; } ;
typedef int __le32 ;
struct TYPE_2__ {struct device dev; } ;


 int BIT (int ) ;
 int HCLGE_IGU_INT_MASK ;
 int HCLGE_NCSI_ECC_INT_MASK ;
 int HCLGE_PPP_MPF_INT_ST3_MASK ;
 int HCLGE_PPU_MPF_INT_ST3_MASK ;
 int HCLGE_QCN_ECC_INT_MASK ;
 int HCLGE_QCN_FIFO_INT_MASK ;
 int HCLGE_QUERY_CLEAR_MPF_RAS_INT ;
 int HCLGE_SSU_COMMON_ERR_INT_MASK ;
 int HNAE3_GLOBAL_RESET ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*) ;
 int hclge_cmd_reuse_desc (struct hclge_desc*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int * hclge_cmdq_nic_mem_ecc_int ;
 int * hclge_igu_int ;
 int * hclge_imp_tcm_ecc_int ;
 int hclge_log_error (struct device*,char*,int *,int,int *) ;
 int * hclge_msix_sram_ecc_int ;
 int * hclge_ncsi_err_int ;
 int * hclge_ppp_mpf_abnormal_int_st1 ;
 int * hclge_ppp_mpf_abnormal_int_st3 ;
 int * hclge_ppu_mpf_abnormal_int_st2 ;
 int * hclge_ppu_mpf_abnormal_int_st3 ;
 int * hclge_qcn_ecc_rint ;
 int * hclge_qcn_fifo_rint ;
 int * hclge_ssu_com_err_int ;
 int * hclge_ssu_mem_ecc_err_int ;
 int * hclge_tm_sch_rint ;
 int * hclge_tqp_int_ecc_int ;
 int le32_to_cpu (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hclge_handle_mpf_ras_error(struct hclge_dev *hdev,
          struct hclge_desc *desc,
          int num)
{
 struct hnae3_ae_dev *ae_dev = hdev->ae_dev;
 struct device *dev = &hdev->pdev->dev;
 __le32 *desc_data;
 u32 status;
 int ret;


 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_QUERY_CLEAR_MPF_RAS_INT,
       1);
 ret = hclge_cmd_send(&hdev->hw, &desc[0], num);
 if (ret) {
  dev_err(dev, "query all mpf ras int cmd failed (%d)\n", ret);
  return ret;
 }


 status = le32_to_cpu(desc[0].data[0]);
 if (status)
  hclge_log_error(dev, "IMP_TCM_ECC_INT_STS",
    &hclge_imp_tcm_ecc_int[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(desc[0].data[1]);
 if (status)
  hclge_log_error(dev, "CMDQ_MEM_ECC_INT_STS",
    &hclge_cmdq_nic_mem_ecc_int[0], status,
    &ae_dev->hw_err_reset_req);

 if ((le32_to_cpu(desc[0].data[2])) & BIT(0))
  dev_warn(dev, "imp_rd_data_poison_err found\n");

 status = le32_to_cpu(desc[0].data[3]);
 if (status)
  hclge_log_error(dev, "TQP_INT_ECC_INT_STS",
    &hclge_tqp_int_ecc_int[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(desc[0].data[4]);
 if (status)
  hclge_log_error(dev, "MSIX_ECC_INT_STS",
    &hclge_msix_sram_ecc_int[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[2];
 status = le32_to_cpu(*(desc_data + 2));
 if (status)
  hclge_log_error(dev, "SSU_ECC_MULTI_BIT_INT_0",
    &hclge_ssu_mem_ecc_err_int[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(*(desc_data + 3)) & BIT(0);
 if (status) {
  dev_err(dev, "SSU_ECC_MULTI_BIT_INT_1 ssu_mem32_ecc_mbit_err found [error status=0x%x]\n",
   status);
  set_bit(HNAE3_GLOBAL_RESET, &ae_dev->hw_err_reset_req);
 }

 status = le32_to_cpu(*(desc_data + 4)) & HCLGE_SSU_COMMON_ERR_INT_MASK;
 if (status)
  hclge_log_error(dev, "SSU_COMMON_ERR_INT",
    &hclge_ssu_com_err_int[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[3];
 status = le32_to_cpu(*desc_data) & HCLGE_IGU_INT_MASK;
 if (status)
  hclge_log_error(dev, "IGU_INT_STS",
    &hclge_igu_int[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[4];
 status = le32_to_cpu(*(desc_data + 1));
 if (status)
  hclge_log_error(dev, "PPP_MPF_ABNORMAL_INT_ST1",
    &hclge_ppp_mpf_abnormal_int_st1[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(*(desc_data + 3)) & HCLGE_PPP_MPF_INT_ST3_MASK;
 if (status)
  hclge_log_error(dev, "PPP_MPF_ABNORMAL_INT_ST3",
    &hclge_ppp_mpf_abnormal_int_st3[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[5];
 status = le32_to_cpu(*(desc_data + 1));
 if (status) {
  dev_err(dev,
   "PPU_MPF_ABNORMAL_INT_ST1 rpu_rx_pkt_ecc_mbit_err found\n");
  set_bit(HNAE3_GLOBAL_RESET, &ae_dev->hw_err_reset_req);
 }

 status = le32_to_cpu(*(desc_data + 2));
 if (status)
  hclge_log_error(dev, "PPU_MPF_ABNORMAL_INT_ST2",
    &hclge_ppu_mpf_abnormal_int_st2[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(*(desc_data + 3)) & HCLGE_PPU_MPF_INT_ST3_MASK;
 if (status)
  hclge_log_error(dev, "PPU_MPF_ABNORMAL_INT_ST3",
    &hclge_ppu_mpf_abnormal_int_st3[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[6];
 status = le32_to_cpu(*desc_data);
 if (status)
  hclge_log_error(dev, "TM_SCH_RINT",
    &hclge_tm_sch_rint[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[7];
 status = le32_to_cpu(*desc_data) & HCLGE_QCN_FIFO_INT_MASK;
 if (status)
  hclge_log_error(dev, "QCN_FIFO_RINT",
    &hclge_qcn_fifo_rint[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(*(desc_data + 1)) & HCLGE_QCN_ECC_INT_MASK;
 if (status)
  hclge_log_error(dev, "QCN_ECC_RINT",
    &hclge_qcn_ecc_rint[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[9];
 status = le32_to_cpu(*desc_data) & HCLGE_NCSI_ECC_INT_MASK;
 if (status)
  hclge_log_error(dev, "NCSI_ECC_INT_RPT",
    &hclge_ncsi_err_int[0], status,
    &ae_dev->hw_err_reset_req);


 hclge_cmd_reuse_desc(&desc[0], 0);
 ret = hclge_cmd_send(&hdev->hw, &desc[0], num);
 if (ret)
  dev_err(dev, "clear all mpf ras int cmd failed (%d)\n", ret);

 return ret;
}
