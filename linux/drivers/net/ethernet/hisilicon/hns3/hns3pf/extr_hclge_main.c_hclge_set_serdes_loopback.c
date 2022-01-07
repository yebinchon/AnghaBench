
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
typedef enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;
struct TYPE_2__ {int dev; } ;


 int FALSE ;
 int dev_err (int *,char*) ;
 int hclge_cfg_mac_mode (struct hclge_dev*,int) ;
 int hclge_cfg_serdes_loopback (struct hclge_dev*,int,int) ;
 int hclge_mac_phy_link_status_wait (struct hclge_dev*,int,int ) ;

__attribute__((used)) static int hclge_set_serdes_loopback(struct hclge_dev *hdev, bool en,
         enum hnae3_loop loop_mode)
{
 int ret;

 ret = hclge_cfg_serdes_loopback(hdev, en, loop_mode);
 if (ret)
  return ret;

 hclge_cfg_mac_mode(hdev, en);

 ret = hclge_mac_phy_link_status_wait(hdev, en, FALSE);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "serdes loopback config mac mode timeout\n");

 return ret;
}
