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
typedef  int u8 ;
typedef  int u32 ;
struct igu_fifo_element {int dummy; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_IGU_FIFO_BAD_DATA ; 
 int DBG_STATUS_OK ; 
 int IGU_FIFO_ELEMENT_DWORDS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct igu_fifo_element*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,char const**,char const**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const**,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static enum dbg_status FUNC7(u32 *dump_buf,
					       char *results_buf,
					       u32 *parsed_results_bytes)
{
	const char *section_name, *param_name, *param_str_val;
	u32 param_num_val, num_section_params, num_elements;
	struct igu_fifo_element *elements;
	enum dbg_status status;
	u32 results_offset = 0;
	u8 i;

	/* Read global_params section */
	dump_buf += FUNC4(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC6(section_name, "global_params"))
		return DBG_STATUS_IGU_FIFO_BAD_DATA;

	/* Print global params */
	dump_buf += FUNC2(dump_buf,
					     num_section_params,
					     results_buf, &results_offset);

	/* Read igu_fifo_data section */
	dump_buf += FUNC4(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC6(section_name, "igu_fifo_data"))
		return DBG_STATUS_IGU_FIFO_BAD_DATA;
	dump_buf += FUNC3(dump_buf,
				   &param_name, &param_str_val, &param_num_val);
	if (FUNC6(param_name, "size"))
		return DBG_STATUS_IGU_FIFO_BAD_DATA;
	if (param_num_val % IGU_FIFO_ELEMENT_DWORDS)
		return DBG_STATUS_IGU_FIFO_BAD_DATA;
	num_elements = param_num_val / IGU_FIFO_ELEMENT_DWORDS;
	elements = (struct igu_fifo_element *)dump_buf;

	/* Decode elements */
	for (i = 0; i < num_elements; i++) {
		status = FUNC1(&elements[i],
						    results_buf,
						    &results_offset);
		if (status != DBG_STATUS_OK)
			return status;
	}

	results_offset += FUNC5(FUNC0(results_buf,
						  results_offset),
				  "fifo contained %d elements", num_elements);

	/* Add 1 for string NULL termination */
	*parsed_results_bytes = results_offset + 1;

	return DBG_STATUS_OK;
}