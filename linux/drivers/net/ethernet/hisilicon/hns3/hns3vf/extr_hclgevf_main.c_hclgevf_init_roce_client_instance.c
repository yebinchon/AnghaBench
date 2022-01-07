
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_client {TYPE_1__* ops; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {int roce; int nic_client; int roce_client; } ;
struct TYPE_2__ {int (* init_instance ) (int *) ;} ;


 int hclgevf_init_roce_base_info (struct hclgevf_dev*) ;
 int hnae3_dev_roce_supported (struct hclgevf_dev*) ;
 int hnae3_set_client_init_flag (struct hnae3_client*,struct hnae3_ae_dev*,int) ;
 int stub1 (int *) ;

__attribute__((used)) static int hclgevf_init_roce_client_instance(struct hnae3_ae_dev *ae_dev,
          struct hnae3_client *client)
{
 struct hclgevf_dev *hdev = ae_dev->priv;
 int ret;

 if (!hnae3_dev_roce_supported(hdev) || !hdev->roce_client ||
     !hdev->nic_client)
  return 0;

 ret = hclgevf_init_roce_base_info(hdev);
 if (ret)
  return ret;

 ret = client->ops->init_instance(&hdev->roce);
 if (ret)
  return ret;

 hnae3_set_client_init_flag(client, ae_dev, 1);

 return 0;
}
