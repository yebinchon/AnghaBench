
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_ae_dev {int reset_type; } ;
struct TYPE_2__ {int reset_fail_cnt; int reset_done_cnt; int hw_reset_done_cnt; int reset_cnt; } ;
struct hclge_dev {int reset_type; int reset_request; int default_reset_request; TYPE_1__ rst_stats; int last_reset_time; int pdev; } ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;


 int HCLGE_RESET_MAX_FAIL_CNT ;
 int HNAE3_DOWN_CLIENT ;
 int HNAE3_INIT_CLIENT ;
 int HNAE3_NONE_RESET ;
 int HNAE3_UNINIT_CLIENT ;
 int HNAE3_UP_CLIENT ;
 int hclge_clear_reset_cause (struct hclge_dev*) ;
 int hclge_get_reset_level (struct hnae3_ae_dev*,int *) ;
 int hclge_notify_client (struct hclge_dev*,int ) ;
 int hclge_notify_roce_client (struct hclge_dev*,int ) ;
 scalar_t__ hclge_reset_err_handle (struct hclge_dev*) ;
 int hclge_reset_prepare_down (struct hclge_dev*) ;
 int hclge_reset_prepare_up (struct hclge_dev*) ;
 int hclge_reset_prepare_wait (struct hclge_dev*) ;
 int hclge_reset_stack (struct hclge_dev*) ;
 int hclge_reset_task_schedule (struct hclge_dev*) ;
 scalar_t__ hclge_reset_wait (struct hclge_dev*) ;
 int jiffies ;
 struct hnae3_ae_dev* pci_get_drvdata (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int,int *) ;

__attribute__((used)) static void hclge_reset(struct hclge_dev *hdev)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(hdev->pdev);
 enum hnae3_reset_type reset_level;
 int ret;




 ae_dev->reset_type = hdev->reset_type;
 hdev->rst_stats.reset_cnt++;

 ret = hclge_notify_roce_client(hdev, HNAE3_DOWN_CLIENT);
 if (ret)
  goto err_reset;

 ret = hclge_reset_prepare_down(hdev);
 if (ret)
  goto err_reset;

 rtnl_lock();
 ret = hclge_notify_client(hdev, HNAE3_DOWN_CLIENT);
 if (ret)
  goto err_reset_lock;

 rtnl_unlock();

 ret = hclge_reset_prepare_wait(hdev);
 if (ret)
  goto err_reset;

 if (hclge_reset_wait(hdev))
  goto err_reset;

 hdev->rst_stats.hw_reset_done_cnt++;

 ret = hclge_notify_roce_client(hdev, HNAE3_UNINIT_CLIENT);
 if (ret)
  goto err_reset;

 rtnl_lock();

 ret = hclge_reset_stack(hdev);
 if (ret)
  goto err_reset_lock;

 hclge_clear_reset_cause(hdev);

 ret = hclge_reset_prepare_up(hdev);
 if (ret)
  goto err_reset_lock;

 rtnl_unlock();

 ret = hclge_notify_roce_client(hdev, HNAE3_INIT_CLIENT);



 if (ret &&
     hdev->rst_stats.reset_fail_cnt < HCLGE_RESET_MAX_FAIL_CNT - 1)
  goto err_reset;

 rtnl_lock();

 ret = hclge_notify_client(hdev, HNAE3_UP_CLIENT);
 if (ret)
  goto err_reset_lock;

 rtnl_unlock();

 ret = hclge_notify_roce_client(hdev, HNAE3_UP_CLIENT);
 if (ret)
  goto err_reset;

 hdev->last_reset_time = jiffies;
 hdev->rst_stats.reset_fail_cnt = 0;
 hdev->rst_stats.reset_done_cnt++;
 ae_dev->reset_type = HNAE3_NONE_RESET;





 reset_level = hclge_get_reset_level(ae_dev,
         &hdev->default_reset_request);
 if (reset_level != HNAE3_NONE_RESET)
  set_bit(reset_level, &hdev->reset_request);

 return;

err_reset_lock:
 rtnl_unlock();
err_reset:
 if (hclge_reset_err_handle(hdev))
  hclge_reset_task_schedule(hdev);
}
