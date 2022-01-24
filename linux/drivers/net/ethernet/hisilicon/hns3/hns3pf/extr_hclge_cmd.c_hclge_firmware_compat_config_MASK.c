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
typedef  int /*<<< orphan*/  u32 ;
struct hclge_firmware_compat_cmd {int /*<<< orphan*/  compat; } ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_LINK_EVENT_REPORT_EN_B ; 
 int /*<<< orphan*/  HCLGE_NCSI_ERROR_REPORT_EN_B ; 
 int /*<<< orphan*/  HCLGE_OPC_M7_COMPAT_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev)
{
	struct hclge_firmware_compat_cmd *req;
	struct hclge_desc desc;
	u32 compat = 0;

	FUNC2(&desc, HCLGE_OPC_M7_COMPAT_CFG, false);

	req = (struct hclge_firmware_compat_cmd *)desc.data;

	FUNC3(compat, HCLGE_LINK_EVENT_REPORT_EN_B, 1);
	FUNC3(compat, HCLGE_NCSI_ERROR_REPORT_EN_B, 1);
	req->compat = FUNC0(compat);

	return FUNC1(&hdev->hw, &desc, 1);
}