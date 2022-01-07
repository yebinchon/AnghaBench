
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int EINVAL ;
 int NUMBER_OF_EXT_HW_QUEUES ;
 int goya_test_queue (struct hl_device*,int) ;

int goya_test_queues(struct hl_device *hdev)
{
 int i, rc, ret_val = 0;

 for (i = 0 ; i < NUMBER_OF_EXT_HW_QUEUES ; i++) {
  rc = goya_test_queue(hdev, i);
  if (rc)
   ret_val = -EINVAL;
 }

 return ret_val;
}
