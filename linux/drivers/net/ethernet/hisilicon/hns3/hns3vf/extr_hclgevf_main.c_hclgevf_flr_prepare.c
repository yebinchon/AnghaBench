
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {TYPE_1__* pdev; int flr_state; int default_reset_request; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_FLR_WAIT_CNT ;
 int HCLGEVF_FLR_WAIT_MS ;
 int HNAE3_FLR_DONE ;
 int HNAE3_FLR_DOWN ;
 int HNAE3_FLR_RESET ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int hclgevf_reset_event (TYPE_1__*,int *) ;
 int msleep (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hclgevf_flr_prepare(struct hnae3_ae_dev *ae_dev)
{


 struct hclgevf_dev *hdev = ae_dev->priv;
 int cnt = 0;

 clear_bit(HNAE3_FLR_DOWN, &hdev->flr_state);
 clear_bit(HNAE3_FLR_DONE, &hdev->flr_state);
 set_bit(HNAE3_FLR_RESET, &hdev->default_reset_request);
 hclgevf_reset_event(hdev->pdev, ((void*)0));

 while (!test_bit(HNAE3_FLR_DOWN, &hdev->flr_state) &&
        cnt++ < 50)
  msleep(100);

 if (!test_bit(HNAE3_FLR_DOWN, &hdev->flr_state))
  dev_err(&hdev->pdev->dev,
   "flr wait down timeout: %d\n", cnt);
}
