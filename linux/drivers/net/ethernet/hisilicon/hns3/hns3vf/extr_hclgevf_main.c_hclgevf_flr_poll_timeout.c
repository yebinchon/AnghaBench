
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclgevf_dev {TYPE_1__* pdev; int flr_state; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int HNAE3_FLR_DONE ;
 int dev_err (int *,char*) ;
 int test_bit (int ,int *) ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static int hclgevf_flr_poll_timeout(struct hclgevf_dev *hdev,
        unsigned long delay_us,
        unsigned long wait_cnt)
{
 unsigned long cnt = 0;

 while (!test_bit(HNAE3_FLR_DONE, &hdev->flr_state) &&
        cnt++ < wait_cnt)
  usleep_range(delay_us, delay_us * 2);

 if (!test_bit(HNAE3_FLR_DONE, &hdev->flr_state)) {
  dev_err(&hdev->pdev->dev,
   "flr wait timeout\n");
  return -ETIMEDOUT;
 }

 return 0;
}
