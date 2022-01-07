
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_client {int type; } ;
struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct TYPE_4__ {struct hnae3_client* client; } ;
struct TYPE_3__ {struct hnae3_client* client; } ;
struct hclge_vport {TYPE_2__ roce; TYPE_1__ nic; } ;
struct hclge_dev {int num_vmdq_vport; struct hnae3_client* roce_client; struct hnae3_client* nic_client; struct hclge_vport* vport; } ;


 int EINVAL ;


 int hclge_init_nic_client_instance (struct hnae3_ae_dev*,struct hclge_vport*) ;
 int hclge_init_roce_client_instance (struct hnae3_ae_dev*,struct hclge_vport*) ;
 int hnae3_dev_roce_supported (struct hclge_dev*) ;

__attribute__((used)) static int hclge_init_client_instance(struct hnae3_client *client,
          struct hnae3_ae_dev *ae_dev)
{
 struct hclge_dev *hdev = ae_dev->priv;
 struct hclge_vport *vport;
 int i, ret;

 for (i = 0; i < hdev->num_vmdq_vport + 1; i++) {
  vport = &hdev->vport[i];

  switch (client->type) {
  case 129:

   hdev->nic_client = client;
   vport->nic.client = client;
   ret = hclge_init_nic_client_instance(ae_dev, vport);
   if (ret)
    goto clear_nic;

   ret = hclge_init_roce_client_instance(ae_dev, vport);
   if (ret)
    goto clear_roce;

   break;
  case 128:
   if (hnae3_dev_roce_supported(hdev)) {
    hdev->roce_client = client;
    vport->roce.client = client;
   }

   ret = hclge_init_roce_client_instance(ae_dev, vport);
   if (ret)
    goto clear_roce;

   break;
  default:
   return -EINVAL;
  }
 }

 return 0;

clear_nic:
 hdev->nic_client = ((void*)0);
 vport->nic.client = ((void*)0);
 return ret;
clear_roce:
 hdev->roce_client = ((void*)0);
 vport->roce.client = ((void*)0);
 return ret;
}
