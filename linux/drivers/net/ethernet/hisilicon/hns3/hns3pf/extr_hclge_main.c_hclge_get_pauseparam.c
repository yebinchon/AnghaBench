
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_6__ {scalar_t__ fc_mode; } ;
struct TYPE_4__ {struct phy_device* phydev; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_3__ tm_info; TYPE_2__ hw; } ;


 scalar_t__ HCLGE_FC_FULL ;
 scalar_t__ HCLGE_FC_PFC ;
 scalar_t__ HCLGE_FC_RX_PAUSE ;
 scalar_t__ HCLGE_FC_TX_PAUSE ;
 int hclge_get_autoneg (struct hnae3_handle*) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static void hclge_get_pauseparam(struct hnae3_handle *handle, u32 *auto_neg,
     u32 *rx_en, u32 *tx_en)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 struct phy_device *phydev = hdev->hw.mac.phydev;

 *auto_neg = phydev ? hclge_get_autoneg(handle) : 0;

 if (hdev->tm_info.fc_mode == HCLGE_FC_PFC) {
  *rx_en = 0;
  *tx_en = 0;
  return;
 }

 if (hdev->tm_info.fc_mode == HCLGE_FC_RX_PAUSE) {
  *rx_en = 1;
  *tx_en = 0;
 } else if (hdev->tm_info.fc_mode == HCLGE_FC_TX_PAUSE) {
  *tx_en = 1;
  *rx_en = 0;
 } else if (hdev->tm_info.fc_mode == HCLGE_FC_FULL) {
  *rx_en = 1;
  *tx_en = 1;
 } else {
  *rx_en = 0;
  *tx_en = 0;
 }
}
