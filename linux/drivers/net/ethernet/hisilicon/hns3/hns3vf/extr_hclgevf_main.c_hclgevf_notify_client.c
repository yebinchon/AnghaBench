
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hnae3_client {TYPE_2__* ops; } ;
struct hclgevf_dev {TYPE_1__* pdev; int state; struct hnae3_handle nic; struct hnae3_client* nic_client; } ;
typedef enum hnae3_reset_notify_type { ____Placeholder_hnae3_reset_notify_type } hnae3_reset_notify_type ;
struct TYPE_4__ {int (* reset_notify ) (struct hnae3_handle*,int) ;} ;
struct TYPE_3__ {int dev; } ;


 int EOPNOTSUPP ;
 int HCLGEVF_STATE_NIC_REGISTERED ;
 int dev_err (int *,char*,int,int) ;
 int stub1 (struct hnae3_handle*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hclgevf_notify_client(struct hclgevf_dev *hdev,
     enum hnae3_reset_notify_type type)
{
 struct hnae3_client *client = hdev->nic_client;
 struct hnae3_handle *handle = &hdev->nic;
 int ret;

 if (!test_bit(HCLGEVF_STATE_NIC_REGISTERED, &hdev->state) ||
     !client)
  return 0;

 if (!client->ops->reset_notify)
  return -EOPNOTSUPP;

 ret = client->ops->reset_notify(handle, type);
 if (ret)
  dev_err(&hdev->pdev->dev, "notify nic client failed %d(%d)\n",
   type, ret);

 return ret;
}
