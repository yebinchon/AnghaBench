
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct hnae3_handle {int dummy; } ;
struct hnae3_client {TYPE_2__* ops; } ;
struct hclge_dev {size_t num_vmdq_vport; TYPE_3__* pdev; TYPE_1__* vport; int state; struct hnae3_client* roce_client; } ;
typedef enum hnae3_reset_notify_type { ____Placeholder_hnae3_reset_notify_type } hnae3_reset_notify_type ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* reset_notify ) (struct hnae3_handle*,int) ;} ;
struct TYPE_4__ {struct hnae3_handle roce; } ;


 int EOPNOTSUPP ;
 int HCLGE_STATE_ROCE_REGISTERED ;
 int dev_err (int *,char*,int,int) ;
 int stub1 (struct hnae3_handle*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hclge_notify_roce_client(struct hclge_dev *hdev,
        enum hnae3_reset_notify_type type)
{
 struct hnae3_client *client = hdev->roce_client;
 int ret = 0;
 u16 i;

 if (!test_bit(HCLGE_STATE_ROCE_REGISTERED, &hdev->state) || !client)
  return 0;

 if (!client->ops->reset_notify)
  return -EOPNOTSUPP;

 for (i = 0; i < hdev->num_vmdq_vport + 1; i++) {
  struct hnae3_handle *handle = &hdev->vport[i].roce;

  ret = client->ops->reset_notify(handle, type);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "notify roce client failed %d(%d)",
    type, ret);
   return ret;
  }
 }

 return ret;
}
