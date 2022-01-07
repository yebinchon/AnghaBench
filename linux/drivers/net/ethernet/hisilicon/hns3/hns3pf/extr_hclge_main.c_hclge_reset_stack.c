
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int ae_dev; } ;


 int HNAE3_INIT_CLIENT ;
 int HNAE3_RESTORE_CLIENT ;
 int HNAE3_UNINIT_CLIENT ;
 int hclge_notify_client (struct hclge_dev*,int ) ;
 int hclge_reset_ae_dev (int ) ;

__attribute__((used)) static int hclge_reset_stack(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_notify_client(hdev, HNAE3_UNINIT_CLIENT);
 if (ret)
  return ret;

 ret = hclge_reset_ae_dev(hdev->ae_dev);
 if (ret)
  return ret;

 ret = hclge_notify_client(hdev, HNAE3_INIT_CLIENT);
 if (ret)
  return ret;

 return hclge_notify_client(hdev, HNAE3_RESTORE_CLIENT);
}
