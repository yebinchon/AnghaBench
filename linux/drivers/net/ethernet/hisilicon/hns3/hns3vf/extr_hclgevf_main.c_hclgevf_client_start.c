
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int keep_alive_timer; } ;


 int HCLGEVF_KEEP_ALIVE_TASK_INTERVAL ;
 int HZ ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_set_alive (struct hnae3_handle*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static int hclgevf_client_start(struct hnae3_handle *handle)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 int ret;

 ret = hclgevf_set_alive(handle, 1);
 if (ret)
  return ret;

 mod_timer(&hdev->keep_alive_timer, jiffies +
    HCLGEVF_KEEP_ALIVE_TASK_INTERVAL * HZ);

 return 0;
}
