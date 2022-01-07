
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_client {TYPE_1__* ops; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {int nic; int state; } ;
struct TYPE_2__ {int (* init_instance ) (int *) ;} ;


 int HCLGEVF_STATE_NIC_REGISTERED ;
 int hclgevf_info_show (struct hclgevf_dev*) ;
 int hnae3_set_client_init_flag (struct hnae3_client*,struct hnae3_ae_dev*,int) ;
 scalar_t__ netif_msg_drv (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (int *) ;

__attribute__((used)) static int hclgevf_init_nic_client_instance(struct hnae3_ae_dev *ae_dev,
         struct hnae3_client *client)
{
 struct hclgevf_dev *hdev = ae_dev->priv;
 int ret;

 ret = client->ops->init_instance(&hdev->nic);
 if (ret)
  return ret;

 set_bit(HCLGEVF_STATE_NIC_REGISTERED, &hdev->state);
 hnae3_set_client_init_flag(client, ae_dev, 1);

 if (netif_msg_drv(&hdev->nic))
  hclgevf_info_show(hdev);

 return 0;
}
