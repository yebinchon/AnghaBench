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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_pause_param_cmd {int /*<<< orphan*/  pause_trans_time; int /*<<< orphan*/  pause_trans_gap; int /*<<< orphan*/  mac_addr_extra; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_CFG_MAC_PARA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev, const u8 *addr,
				 u8 pause_trans_gap, u16 pause_trans_time)
{
	struct hclge_cfg_pause_param_cmd *pause_param;
	struct hclge_desc desc;

	pause_param = (struct hclge_cfg_pause_param_cmd *)desc.data;

	FUNC3(&desc, HCLGE_OPC_CFG_MAC_PARA, false);

	FUNC1(pause_param->mac_addr, addr);
	FUNC1(pause_param->mac_addr_extra, addr);
	pause_param->pause_trans_gap = pause_trans_gap;
	pause_param->pause_trans_time = FUNC0(pause_trans_time);

	return FUNC2(&hdev->hw, &desc, 1);
}