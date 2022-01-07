
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int fc_mode; } ;
struct hclge_dev {int fc_mode_last_time; TYPE_1__ tm_info; } ;


 int HCLGE_FC_FULL ;
 int HCLGE_FC_NONE ;
 int HCLGE_FC_RX_PAUSE ;
 int HCLGE_FC_TX_PAUSE ;

__attribute__((used)) static void hclge_record_user_pauseparam(struct hclge_dev *hdev,
      u32 rx_en, u32 tx_en)
{
 if (rx_en && tx_en)
  hdev->fc_mode_last_time = HCLGE_FC_FULL;
 else if (rx_en && !tx_en)
  hdev->fc_mode_last_time = HCLGE_FC_RX_PAUSE;
 else if (!rx_en && tx_en)
  hdev->fc_mode_last_time = HCLGE_FC_TX_PAUSE;
 else
  hdev->fc_mode_last_time = HCLGE_FC_NONE;

 hdev->tm_info.fc_mode = hdev->fc_mode_last_time;
}
