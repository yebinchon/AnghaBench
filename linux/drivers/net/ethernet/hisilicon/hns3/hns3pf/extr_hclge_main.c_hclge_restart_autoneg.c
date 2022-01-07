
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HNAE3_DOWN_CLIENT ;
 int HNAE3_UP_CLIENT ;
 int dev_dbg (int *,char*) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_notify_client (struct hclge_dev*,int ) ;

__attribute__((used)) static int hclge_restart_autoneg(struct hnae3_handle *handle)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 int ret;

 dev_dbg(&hdev->pdev->dev, "restart autoneg\n");

 ret = hclge_notify_client(hdev, HNAE3_DOWN_CLIENT);
 if (ret)
  return ret;
 return hclge_notify_client(hdev, HNAE3_UP_CLIENT);
}
