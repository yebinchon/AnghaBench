
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ fc_mode; int pfc_en; } ;
struct hclge_dev {TYPE_1__ tm_info; } ;


 scalar_t__ HCLGE_FC_PFC ;
 int HCLGE_RX_MAC_PAUSE_EN_MSK ;
 int HCLGE_TX_MAC_PAUSE_EN_MSK ;
 int hclge_pfc_pause_en_cfg (struct hclge_dev*,int,int ) ;

__attribute__((used)) static int hclge_pfc_setup_hw(struct hclge_dev *hdev)
{
 u8 enable_bitmap = 0;

 if (hdev->tm_info.fc_mode == HCLGE_FC_PFC)
  enable_bitmap = HCLGE_TX_MAC_PAUSE_EN_MSK |
    HCLGE_RX_MAC_PAUSE_EN_MSK;

 return hclge_pfc_pause_en_cfg(hdev, enable_bitmap,
          hdev->tm_info.pfc_en);
}
