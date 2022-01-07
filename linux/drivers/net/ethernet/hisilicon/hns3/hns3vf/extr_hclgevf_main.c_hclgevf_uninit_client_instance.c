
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hnae3_client {scalar_t__ type; TYPE_3__* ops; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct TYPE_9__ {int * client; } ;
struct TYPE_10__ {int * client; } ;
struct hclgevf_dev {TYPE_4__ nic; int * nic_client; int state; TYPE_5__ roce; TYPE_2__* roce_client; } ;
struct TYPE_8__ {int (* uninit_instance ) (TYPE_4__*,int ) ;} ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int (* uninit_instance ) (TYPE_5__*,int ) ;} ;


 int HCLGEVF_STATE_NIC_REGISTERED ;
 scalar_t__ HNAE3_CLIENT_ROCE ;
 int clear_bit (int ,int *) ;
 int stub1 (TYPE_5__*,int ) ;
 int stub2 (TYPE_4__*,int ) ;

__attribute__((used)) static void hclgevf_uninit_client_instance(struct hnae3_client *client,
        struct hnae3_ae_dev *ae_dev)
{
 struct hclgevf_dev *hdev = ae_dev->priv;


 if (hdev->roce_client) {
  hdev->roce_client->ops->uninit_instance(&hdev->roce, 0);
  hdev->roce_client = ((void*)0);
  hdev->roce.client = ((void*)0);
 }


 if (client->ops->uninit_instance && hdev->nic_client &&
     client->type != HNAE3_CLIENT_ROCE) {
  clear_bit(HCLGEVF_STATE_NIC_REGISTERED, &hdev->state);

  client->ops->uninit_instance(&hdev->nic, 0);
  hdev->nic_client = ((void*)0);
  hdev->nic.client = ((void*)0);
 }
}
