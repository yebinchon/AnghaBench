
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ fc_mode; } ;
struct hclge_dev {TYPE_2__* pdev; TYPE_1__ tm_info; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ HCLGE_FC_PFC ;
 int dev_err (int *,char*,int) ;
 int hclge_mac_pause_en_cfg (struct hclge_dev*,int ,int ) ;

__attribute__((used)) static int hclge_cfg_pauseparam(struct hclge_dev *hdev, u32 rx_en, u32 tx_en)
{
 int ret;

 if (hdev->tm_info.fc_mode == HCLGE_FC_PFC)
  return 0;

 ret = hclge_mac_pause_en_cfg(hdev, tx_en, rx_en);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "configure pauseparam error, ret = %d.\n", ret);

 return ret;
}
