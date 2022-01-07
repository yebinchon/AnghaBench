
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_tqps_update_stats (struct hnae3_handle*) ;

__attribute__((used)) static void hclgevf_update_stats(struct hnae3_handle *handle,
     struct net_device_stats *net_stats)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 int status;

 status = hclgevf_tqps_update_stats(handle);
 if (status)
  dev_err(&hdev->pdev->dev,
   "VF update of TQPS stats fail, status = %d.\n",
   status);
}
