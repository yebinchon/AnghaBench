
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_mac {int mac_addr; } ;
struct TYPE_2__ {struct hclge_mac mac; } ;
struct hclge_dev {TYPE_1__ hw; } ;


 int HCLGE_DEFAULT_PAUSE_TRANS_GAP ;
 int HCLGE_DEFAULT_PAUSE_TRANS_TIME ;
 int hclge_pause_param_cfg (struct hclge_dev*,int ,int ,int ) ;

__attribute__((used)) static int hclge_pause_param_setup_hw(struct hclge_dev *hdev)
{
 struct hclge_mac *mac = &hdev->hw.mac;

 return hclge_pause_param_cfg(hdev, mac->mac_addr,
         HCLGE_DEFAULT_PAUSE_TRANS_GAP,
         HCLGE_DEFAULT_PAUSE_TRANS_TIME);
}
