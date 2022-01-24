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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  tqp_intr_reg_addr_list ;
struct hnae3_knic_private_info {int num_tqps; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int num_msi_used; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  ring_reg_addr_list ;
typedef  int /*<<< orphan*/  common_reg_addr_list ;
typedef  int /*<<< orphan*/  cmdq_reg_addr_list ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int REG_LEN_PER_LINE ; 
 int REG_SEPARATOR_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hclge_dev*,int*) ; 
 int FUNC2 (struct hclge_dev*,int*,int*) ; 
 struct hclge_vport* FUNC3 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC4(struct hnae3_handle *handle)
{
	int cmdq_lines, common_lines, ring_lines, tqp_intr_lines;
	struct hnae3_knic_private_info *kinfo = &handle->kinfo;
	struct hclge_vport *vport = FUNC3(handle);
	struct hclge_dev *hdev = vport->back;
	int regs_num_32_bit, regs_num_64_bit, dfx_regs_len;
	int regs_lines_32_bit, regs_lines_64_bit;
	int ret;

	ret = FUNC2(hdev, &regs_num_32_bit, &regs_num_64_bit);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"Get register number failed, ret = %d.\n", ret);
		return ret;
	}

	ret = FUNC1(hdev, &dfx_regs_len);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"Get dfx reg len failed, ret = %d.\n", ret);
		return ret;
	}

	cmdq_lines = sizeof(cmdq_reg_addr_list) / REG_LEN_PER_LINE +
		REG_SEPARATOR_LINE;
	common_lines = sizeof(common_reg_addr_list) / REG_LEN_PER_LINE +
		REG_SEPARATOR_LINE;
	ring_lines = sizeof(ring_reg_addr_list) / REG_LEN_PER_LINE +
		REG_SEPARATOR_LINE;
	tqp_intr_lines = sizeof(tqp_intr_reg_addr_list) / REG_LEN_PER_LINE +
		REG_SEPARATOR_LINE;
	regs_lines_32_bit = regs_num_32_bit * sizeof(u32) / REG_LEN_PER_LINE +
		REG_SEPARATOR_LINE;
	regs_lines_64_bit = regs_num_64_bit * sizeof(u64) / REG_LEN_PER_LINE +
		REG_SEPARATOR_LINE;

	return (cmdq_lines + common_lines + ring_lines * kinfo->num_tqps +
		tqp_intr_lines * (hdev->num_msi_used - 1) + regs_lines_32_bit +
		regs_lines_64_bit) * REG_LEN_PER_LINE + dfx_regs_len;
}