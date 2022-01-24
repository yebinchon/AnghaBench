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
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_FUN_RST_ING ; 
 int /*<<< orphan*/  HCLGE_GLOBAL_RESET_REG ; 
 struct hclge_vport* FUNC0 (struct hnae3_handle*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct hnae3_handle *handle)
{
	struct hclge_vport *vport = FUNC0(handle);
	struct hclge_dev *hdev = vport->back;

	return FUNC1(&hdev->hw, HCLGE_GLOBAL_RESET_REG) ||
	       FUNC1(&hdev->hw, HCLGE_FUN_RST_ING);
}