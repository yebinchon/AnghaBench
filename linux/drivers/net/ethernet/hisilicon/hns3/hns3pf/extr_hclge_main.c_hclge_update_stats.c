
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int state; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_STATE_STATISTICS_UPDATING ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_mac_update_stats (struct hclge_dev*) ;
 int hclge_tqps_update_stats (struct hnae3_handle*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void hclge_update_stats(struct hnae3_handle *handle,
          struct net_device_stats *net_stats)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 int status;

 if (test_and_set_bit(HCLGE_STATE_STATISTICS_UPDATING, &hdev->state))
  return;

 status = hclge_mac_update_stats(hdev);
 if (status)
  dev_err(&hdev->pdev->dev,
   "Update MAC stats fail, status = %d.\n",
   status);

 status = hclge_tqps_update_stats(handle);
 if (status)
  dev_err(&hdev->pdev->dev,
   "Update TQPS stats fail, status = %d.\n",
   status);

 clear_bit(HCLGE_STATE_STATISTICS_UPDATING, &hdev->state);
}
