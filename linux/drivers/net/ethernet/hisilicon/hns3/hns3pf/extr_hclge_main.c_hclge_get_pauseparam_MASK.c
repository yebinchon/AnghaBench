#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct phy_device {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_6__ {scalar_t__ fc_mode; } ;
struct TYPE_4__ {struct phy_device* phydev; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_3__ tm_info; TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ HCLGE_FC_FULL ; 
 scalar_t__ HCLGE_FC_PFC ; 
 scalar_t__ HCLGE_FC_RX_PAUSE ; 
 scalar_t__ HCLGE_FC_TX_PAUSE ; 
 int FUNC0 (struct hnae3_handle*) ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 

__attribute__((used)) static void FUNC2(struct hnae3_handle *handle, u32 *auto_neg,
				 u32 *rx_en, u32 *tx_en)
{
	struct hclge_vport *vport = FUNC1(handle);
	struct hclge_dev *hdev = vport->back;
	struct phy_device *phydev = hdev->hw.mac.phydev;

	*auto_neg = phydev ? FUNC0(handle) : 0;

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