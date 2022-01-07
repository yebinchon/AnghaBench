
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ io_base; } ;
struct hclgevf_dev {scalar_t__ reset_type; TYPE_1__* pdev; TYPE_2__ hw; } ;
struct TYPE_3__ {int dev; } ;


 int HCLGEVF_RESET_WAIT_CNT ;
 int HCLGEVF_RESET_WAIT_TIMEOUT_US ;
 int HCLGEVF_RESET_WAIT_US ;
 scalar_t__ HCLGEVF_RST_ING ;
 int HCLGEVF_RST_ING_BITS ;
 scalar_t__ HCLGEVF_VF_RST_ING ;
 int HCLGEVF_VF_RST_ING_BIT ;
 scalar_t__ HNAE3_FLR_RESET ;
 scalar_t__ HNAE3_VF_RESET ;
 int dev_err (int *,char*) ;
 int hclgevf_flr_poll_timeout (struct hclgevf_dev*,int ,int ) ;
 int msleep (int) ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;

__attribute__((used)) static int hclgevf_reset_wait(struct hclgevf_dev *hdev)
{





 u32 val;
 int ret;

 if (hdev->reset_type == HNAE3_FLR_RESET)
  return hclgevf_flr_poll_timeout(hdev,
      20000,
      2000);
 else if (hdev->reset_type == HNAE3_VF_RESET)
  ret = readl_poll_timeout(hdev->hw.io_base +
      HCLGEVF_VF_RST_ING, val,
      !(val & HCLGEVF_VF_RST_ING_BIT),
      20000,
      (20000 * 2000));
 else
  ret = readl_poll_timeout(hdev->hw.io_base +
      HCLGEVF_RST_ING, val,
      !(val & HCLGEVF_RST_ING_BITS),
      20000,
      (20000 * 2000));


 if (ret) {
  dev_err(&hdev->pdev->dev,
   "could'nt get reset done status from h/w, timeout!\n");
  return ret;
 }





 msleep(5000);

 return 0;
}
