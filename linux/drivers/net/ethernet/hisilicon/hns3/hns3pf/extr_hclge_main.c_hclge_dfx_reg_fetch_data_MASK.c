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
struct hclge_desc {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int REG_NUM_PER_LINE ; 
 int REG_NUM_REMAIN_MASK ; 
 int /*<<< orphan*/  SEPARATOR_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hclge_desc *desc_src, int bd_num,
				    void *data)
{
	int entries_per_desc, reg_num, separator_num, desc_index, index, i;
	struct hclge_desc *desc = desc_src;
	u32 *reg = data;

	entries_per_desc = FUNC0(desc->data);
	reg_num = entries_per_desc * bd_num;
	separator_num = REG_NUM_PER_LINE - (reg_num & REG_NUM_REMAIN_MASK);
	for (i = 0; i < reg_num; i++) {
		index = i % entries_per_desc;
		desc_index = i / entries_per_desc;
		*reg++ = FUNC1(desc[desc_index].data[index]);
	}
	for (i = 0; i < separator_num; i++)
		*reg++ = SEPARATOR_VALUE;

	return reg_num + separator_num;
}