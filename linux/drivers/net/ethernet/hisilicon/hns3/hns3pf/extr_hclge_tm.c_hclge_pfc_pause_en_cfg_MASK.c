#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u8 ;
struct hclge_pfc_en_cmd {void* pri_en_bitmap; void* tx_rx_en_bitmap; } ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_CFG_PFC_PAUSE_EN ; 
 int FUNC0 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct hclge_dev *hdev, u8 tx_rx_bitmap,
				  u8 pfc_bitmap)
{
	struct hclge_desc desc;
	struct hclge_pfc_en_cmd *pfc = (struct hclge_pfc_en_cmd *)desc.data;

	FUNC1(&desc, HCLGE_OPC_CFG_PFC_PAUSE_EN, false);

	pfc->tx_rx_en_bitmap = tx_rx_bitmap;
	pfc->pri_en_bitmap = pfc_bitmap;

	return FUNC0(&hdev->hw, &desc, 1);
}