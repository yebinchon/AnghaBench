
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_client {int type; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct TYPE_4__ {struct hnae3_client* client; } ;
struct TYPE_3__ {struct hnae3_client* client; } ;
struct hclgevf_dev {TYPE_2__ roce; struct hnae3_client* roce_client; TYPE_1__ nic; struct hnae3_client* nic_client; } ;


 int EINVAL ;


 int hclgevf_init_nic_client_instance (struct hnae3_ae_dev*,struct hnae3_client*) ;
 int hclgevf_init_roce_client_instance (struct hnae3_ae_dev*,struct hnae3_client*) ;
 int hnae3_dev_roce_supported (struct hclgevf_dev*) ;

__attribute__((used)) static int hclgevf_init_client_instance(struct hnae3_client *client,
     struct hnae3_ae_dev *ae_dev)
{
 struct hclgevf_dev *hdev = ae_dev->priv;
 int ret;

 switch (client->type) {
 case 129:
  hdev->nic_client = client;
  hdev->nic.client = client;

  ret = hclgevf_init_nic_client_instance(ae_dev, client);
  if (ret)
   goto clear_nic;

  ret = hclgevf_init_roce_client_instance(ae_dev,
       hdev->roce_client);
  if (ret)
   goto clear_roce;

  break;
 case 128:
  if (hnae3_dev_roce_supported(hdev)) {
   hdev->roce_client = client;
   hdev->roce.client = client;
  }

  ret = hclgevf_init_roce_client_instance(ae_dev, client);
  if (ret)
   goto clear_roce;

  break;
 default:
  return -EINVAL;
 }

 return 0;

clear_nic:
 hdev->nic_client = ((void*)0);
 hdev->nic.client = ((void*)0);
 return ret;
clear_roce:
 hdev->roce_client = ((void*)0);
 hdev->roce.client = ((void*)0);
 return ret;
}
