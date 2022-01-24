#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_dbg_reg_type_info {char* reg_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct hclge_dbg_reg_type_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_dev*,struct hclge_dbg_reg_type_info*,char const*) ; 
 struct hclge_dbg_reg_type_info* hclge_dbg_reg_info ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct hclge_dev *hdev, const char *cmd_buf)
{
	struct hclge_dbg_reg_type_info *reg_info;
	bool has_dump = false;
	int i;

	for (i = 0; i < FUNC0(hclge_dbg_reg_info); i++) {
		reg_info = &hclge_dbg_reg_info[i];
		if (!FUNC5(cmd_buf, reg_info->reg_type,
			     FUNC4(reg_info->reg_type))) {
			FUNC3(hdev, reg_info, cmd_buf);
			has_dump = true;
		}
	}

	if (FUNC5(cmd_buf, "dcb", 3) == 0) {
		FUNC2(hdev, &cmd_buf[sizeof("dcb")]);
		has_dump = true;
	}

	if (!has_dump) {
		FUNC1(&hdev->pdev->dev, "unknown command\n");
		return;
	}
}