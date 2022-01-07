
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


 int HCLGE_IGU_EGU_TNL_INT_MASK ;
 int HCLGE_PPU_PF_INT_RAS_MASK ;
 int HCLGE_QUERY_CLEAR_PF_RAS_INT ;
 int HNAE3_PPU_POISON_ERROR ;
 int dev_err (struct device*,char*,int) ;
 int hclge_cmd_reuse_desc (struct hclge_desc*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int * hclge_igu_egu_tnl_int ;
 int hclge_log_error (struct device*,char*,int *,int,int *) ;
 int * hclge_ppu_pf_abnormal_int ;
 int hclge_report_hw_error (struct hclge_dev*,int ) ;
 int * hclge_ssu_ets_tcg_int ;
 int * hclge_ssu_fifo_overflow_int ;
 int * hclge_ssu_port_based_err_int ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_handle_pf_ras_error(struct hclge_dev *hdev,
         struct hclge_desc *desc,
         int num)
{
 struct hnae3_ae_dev *ae_dev = hdev->ae_dev;
 struct device *dev = &hdev->pdev->dev;
 __le32 *desc_data;
 u32 status;
 int ret;


 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_QUERY_CLEAR_PF_RAS_INT,
       1);
 ret = hclge_cmd_send(&hdev->hw, &desc[0], num);
 if (ret) {
  dev_err(dev, "query all pf ras int cmd failed (%d)\n", ret);
  return ret;
 }


 status = le32_to_cpu(desc[0].data[0]);
 if (status)
  hclge_log_error(dev, "SSU_PORT_BASED_ERR_INT",
    &hclge_ssu_port_based_err_int[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(desc[0].data[1]);
 if (status)
  hclge_log_error(dev, "SSU_FIFO_OVERFLOW_INT",
    &hclge_ssu_fifo_overflow_int[0], status,
    &ae_dev->hw_err_reset_req);

 status = le32_to_cpu(desc[0].data[2]);
 if (status)
  hclge_log_error(dev, "SSU_ETS_TCG_INT",
    &hclge_ssu_ets_tcg_int[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[1];
 status = le32_to_cpu(*desc_data) & HCLGE_IGU_EGU_TNL_INT_MASK;
 if (status)
  hclge_log_error(dev, "IGU_EGU_TNL_INT_STS",
    &hclge_igu_egu_tnl_int[0], status,
    &ae_dev->hw_err_reset_req);


 desc_data = (__le32 *)&desc[3];
 status = le32_to_cpu(*desc_data) & HCLGE_PPU_PF_INT_RAS_MASK;
 if (status) {
  hclge_log_error(dev, "PPU_PF_ABNORMAL_INT_ST0",
    &hclge_ppu_pf_abnormal_int[0], status,
    &ae_dev->hw_err_reset_req);
  hclge_report_hw_error(hdev, HNAE3_PPU_POISON_ERROR);
 }


 hclge_cmd_reuse_desc(&desc[0], 0);
 ret = hclge_cmd_send(&hdev->hw, &desc[0], num);
 if (ret)
  dev_err(dev, "clear all pf ras int cmd failed (%d)\n", ret);

 return ret;
}
