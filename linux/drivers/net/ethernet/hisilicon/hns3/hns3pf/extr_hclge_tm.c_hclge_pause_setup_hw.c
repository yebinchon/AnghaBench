
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int hclge_mac_pause_setup_hw (struct hclge_dev*) ;
 int hclge_pause_param_setup_hw (struct hclge_dev*) ;
 int hclge_pfc_setup_hw (struct hclge_dev*) ;
 int hclge_tm_bp_setup (struct hclge_dev*) ;
 int hnae3_dev_dcb_supported (struct hclge_dev*) ;

int hclge_pause_setup_hw(struct hclge_dev *hdev, bool init)
{
 int ret;

 ret = hclge_pause_param_setup_hw(hdev);
 if (ret)
  return ret;

 ret = hclge_mac_pause_setup_hw(hdev);
 if (ret)
  return ret;


 if (!hnae3_dev_dcb_supported(hdev))
  return 0;





 ret = hclge_pfc_setup_hw(hdev);
 if (init && ret == -EOPNOTSUPP)
  dev_warn(&hdev->pdev->dev, "GE MAC does not support pfc\n");
 else if (ret) {
  dev_err(&hdev->pdev->dev, "config pfc failed! ret = %d\n",
   ret);
  return ret;
 }

 return hclge_tm_bp_setup(hdev);
}
