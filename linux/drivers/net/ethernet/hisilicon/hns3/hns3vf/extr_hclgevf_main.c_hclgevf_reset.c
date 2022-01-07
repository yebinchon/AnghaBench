
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_ae_dev {int reset_type; } ;
struct TYPE_3__ {scalar_t__ rst_fail_cnt; int rst_done_cnt; int hw_rst_done_cnt; int rst_cnt; } ;
struct hclgevf_dev {TYPE_1__ rst_stats; int last_reset_time; TYPE_2__* pdev; int reset_type; } ;
struct TYPE_4__ {int dev; } ;


 int HNAE3_DOWN_CLIENT ;
 int HNAE3_NONE_RESET ;
 int HNAE3_UP_CLIENT ;
 int dev_err (int *,char*,...) ;
 int hclgevf_notify_client (struct hclgevf_dev*,int ) ;
 int hclgevf_reset_err_handle (struct hclgevf_dev*) ;
 int hclgevf_reset_prepare_wait (struct hclgevf_dev*) ;
 int hclgevf_reset_stack (struct hclgevf_dev*) ;
 int hclgevf_reset_wait (struct hclgevf_dev*) ;
 int jiffies ;
 struct hnae3_ae_dev* pci_get_drvdata (TYPE_2__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int hclgevf_reset(struct hclgevf_dev *hdev)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(hdev->pdev);
 int ret;




 ae_dev->reset_type = hdev->reset_type;
 hdev->rst_stats.rst_cnt++;
 rtnl_lock();


 ret = hclgevf_notify_client(hdev, HNAE3_DOWN_CLIENT);
 if (ret)
  goto err_reset_lock;

 rtnl_unlock();

 ret = hclgevf_reset_prepare_wait(hdev);
 if (ret)
  goto err_reset;




 ret = hclgevf_reset_wait(hdev);
 if (ret) {

  dev_err(&hdev->pdev->dev,
   "VF failed(=%d) to fetch H/W reset completion status\n",
   ret);
  goto err_reset;
 }

 hdev->rst_stats.hw_rst_done_cnt++;

 rtnl_lock();


 ret = hclgevf_reset_stack(hdev);
 if (ret) {
  dev_err(&hdev->pdev->dev, "failed to reset VF stack\n");
  goto err_reset_lock;
 }


 ret = hclgevf_notify_client(hdev, HNAE3_UP_CLIENT);
 if (ret)
  goto err_reset_lock;

 rtnl_unlock();

 hdev->last_reset_time = jiffies;
 ae_dev->reset_type = HNAE3_NONE_RESET;
 hdev->rst_stats.rst_done_cnt++;
 hdev->rst_stats.rst_fail_cnt = 0;

 return ret;
err_reset_lock:
 rtnl_unlock();
err_reset:
 hclgevf_reset_err_handle(hdev);

 return ret;
}
