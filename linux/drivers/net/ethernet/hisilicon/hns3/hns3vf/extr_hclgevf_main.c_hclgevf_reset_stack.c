
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclgevf_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HNAE3_INIT_CLIENT ;
 int HNAE3_RESTORE_CLIENT ;
 int HNAE3_UNINIT_CLIENT ;
 int dev_err (int *,char*) ;
 int hclgevf_notify_client (struct hclgevf_dev*,int ) ;
 int hclgevf_reset_handshake (struct hclgevf_dev*,int) ;
 int hclgevf_reset_hdev (struct hclgevf_dev*) ;

__attribute__((used)) static int hclgevf_reset_stack(struct hclgevf_dev *hdev)
{
 int ret;


 ret = hclgevf_notify_client(hdev, HNAE3_UNINIT_CLIENT);
 if (ret)
  return ret;


 ret = hclgevf_reset_hdev(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "hclge device re-init failed, VF is disabled!\n");
  return ret;
 }


 ret = hclgevf_notify_client(hdev, HNAE3_INIT_CLIENT);
 if (ret)
  return ret;

 ret = hclgevf_notify_client(hdev, HNAE3_RESTORE_CLIENT);
 if (ret)
  return ret;


 hclgevf_reset_handshake(hdev, 0);

 return 0;
}
