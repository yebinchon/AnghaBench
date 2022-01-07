
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct hnae3_client {TYPE_2__* ops; } ;
struct hclge_dev {size_t num_vmdq_vport; TYPE_1__* vport; int state; struct hnae3_client* nic_client; } ;
typedef enum hnae3_hw_error_type { ____Placeholder_hnae3_hw_error_type } hnae3_hw_error_type ;
struct TYPE_4__ {int (* process_hw_error ) (int *,int) ;} ;
struct TYPE_3__ {int nic; } ;


 int HCLGE_STATE_NIC_REGISTERED ;
 int stub1 (int *,int) ;
 int test_bit (int ,int *) ;

void hclge_report_hw_error(struct hclge_dev *hdev,
      enum hnae3_hw_error_type type)
{
 struct hnae3_client *client = hdev->nic_client;
 u16 i;

 if (!client || !client->ops->process_hw_error ||
     !test_bit(HCLGE_STATE_NIC_REGISTERED, &hdev->state))
  return;

 for (i = 0; i < hdev->num_vmdq_vport + 1; i++)
  client->ops->process_hw_error(&hdev->vport[i].nic, type);
}
