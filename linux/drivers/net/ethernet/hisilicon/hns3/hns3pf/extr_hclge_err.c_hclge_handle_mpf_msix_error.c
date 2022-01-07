
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {int dummy; } ;
struct device {int dummy; } ;
typedef int __le32 ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_PPU_MPF_INT_ST2_MSIX_MASK ;
 int HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT ;
 int dev_err (struct device*,char*,int) ;
 int hclge_clear_hw_msix_error (struct hclge_dev*,struct hclge_desc*,int,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_log_error (struct device*,char*,int *,int,unsigned long*) ;
 int * hclge_mac_afifo_tnl_int ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_handle_mpf_msix_error(struct hclge_dev *hdev,
           struct hclge_desc *desc,
           int mpf_bd_num,
           unsigned long *reset_requests)
{
 struct device *dev = &hdev->pdev->dev;
 __le32 *desc_data;
 u32 status;
 int ret;

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT,
       1);
 ret = hclge_cmd_send(&hdev->hw, &desc[0], mpf_bd_num);
 if (ret) {
  dev_err(dev, "query all mpf msix int cmd failed (%d)\n", ret);
  return ret;
 }


 desc_data = (__le32 *)&desc[1];
 status = le32_to_cpu(*desc_data);
 if (status)
  hclge_log_error(dev, "MAC_AFIFO_TNL_INT_R",
    &hclge_mac_afifo_tnl_int[0], status,
    reset_requests);


 desc_data = (__le32 *)&desc[5];
 status = le32_to_cpu(*(desc_data + 2)) &
   HCLGE_PPU_MPF_INT_ST2_MSIX_MASK;
 if (status)
  dev_err(dev, "PPU_MPF_ABNORMAL_INT_ST2 rx_q_search_miss found [dfx status=0x%x\n]",
   status);


 ret = hclge_clear_hw_msix_error(hdev, desc, 1, mpf_bd_num);
 if (ret)
  dev_err(dev, "clear all mpf msix int cmd failed (%d)\n", ret);

 return ret;
}
