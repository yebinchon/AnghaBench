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
struct reg_fifo_element {int /*<<< orphan*/  data; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int DBG_STATUS_OK ; 
 int DBG_STATUS_REG_FIFO_BAD_DATA ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_ACCESS ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_ADDRESS ; 
 int REG_FIFO_ELEMENT_ADDR_FACTOR ; 
 int REG_FIFO_ELEMENT_DWORDS ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_ERROR ; 
 int REG_FIFO_ELEMENT_IS_PF_VF_VAL ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_MASTER ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_PF ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_PORT ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_PRIVILEGE ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_PROTECTION ; 
 int /*<<< orphan*/  REG_FIFO_ELEMENT_VF ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const**,char const**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,char const**,int*) ; 
 int /*<<< orphan*/ * s_access_strs ; 
 int /*<<< orphan*/ * s_master_strs ; 
 int /*<<< orphan*/ * s_privilege_strs ; 
 int /*<<< orphan*/ * s_protection_strs ; 
 char** s_reg_fifo_error_strs ; 
 int FUNC6 (char*,char*,...) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static enum dbg_status FUNC8(u32 *dump_buf,
					       char *results_buf,
					       u32 *parsed_results_bytes)
{
	const char *section_name, *param_name, *param_str_val;
	u32 param_num_val, num_section_params, num_elements;
	struct reg_fifo_element *elements;
	u8 i, j, err_val, vf_val;
	u32 results_offset = 0;
	char vf_str[4];

	/* Read global_params section */
	dump_buf += FUNC5(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC7(section_name, "global_params"))
		return DBG_STATUS_REG_FIFO_BAD_DATA;

	/* Print global params */
	dump_buf += FUNC3(dump_buf,
					     num_section_params,
					     results_buf, &results_offset);

	/* Read reg_fifo_data section */
	dump_buf += FUNC5(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC7(section_name, "reg_fifo_data"))
		return DBG_STATUS_REG_FIFO_BAD_DATA;
	dump_buf += FUNC4(dump_buf,
				   &param_name, &param_str_val, &param_num_val);
	if (FUNC7(param_name, "size"))
		return DBG_STATUS_REG_FIFO_BAD_DATA;
	if (param_num_val % REG_FIFO_ELEMENT_DWORDS)
		return DBG_STATUS_REG_FIFO_BAD_DATA;
	num_elements = param_num_val / REG_FIFO_ELEMENT_DWORDS;
	elements = (struct reg_fifo_element *)dump_buf;

	/* Decode elements */
	for (i = 0; i < num_elements; i++) {
		bool err_printed = false;

		/* Discover if element belongs to a VF or a PF */
		vf_val = FUNC1(elements[i].data, REG_FIFO_ELEMENT_VF);
		if (vf_val == REG_FIFO_ELEMENT_IS_PF_VF_VAL)
			FUNC6(vf_str, "%s", "N/A");
		else
			FUNC6(vf_str, "%d", vf_val);

		/* Add parsed element to parsed buffer */
		results_offset +=
		    FUNC6(FUNC2(results_buf,
					    results_offset),
			    "raw: 0x%016llx, address: 0x%07x, access: %-5s, pf: %2d, vf: %s, port: %d, privilege: %-3s, protection: %-12s, master: %-4s, errors: ",
			    elements[i].data,
			    (u32)FUNC1(elements[i].data,
					   REG_FIFO_ELEMENT_ADDRESS) *
			    REG_FIFO_ELEMENT_ADDR_FACTOR,
			    s_access_strs[FUNC1(elements[i].data,
						    REG_FIFO_ELEMENT_ACCESS)],
			    (u32)FUNC1(elements[i].data,
					   REG_FIFO_ELEMENT_PF),
			    vf_str,
			    (u32)FUNC1(elements[i].data,
					   REG_FIFO_ELEMENT_PORT),
			    s_privilege_strs[FUNC1(elements[i].data,
						REG_FIFO_ELEMENT_PRIVILEGE)],
			    s_protection_strs[FUNC1(elements[i].data,
						REG_FIFO_ELEMENT_PROTECTION)],
			    s_master_strs[FUNC1(elements[i].data,
						REG_FIFO_ELEMENT_MASTER)]);

		/* Print errors */
		for (j = 0,
		     err_val = FUNC1(elements[i].data,
					 REG_FIFO_ELEMENT_ERROR);
		     j < FUNC0(s_reg_fifo_error_strs);
		     j++, err_val >>= 1) {
			if (err_val & 0x1) {
				if (err_printed)
					results_offset +=
					    FUNC6(FUNC2
						    (results_buf,
						     results_offset), ", ");
				results_offset +=
				    FUNC6(FUNC2
					    (results_buf, results_offset), "%s",
					    s_reg_fifo_error_strs[j]);
				err_printed = true;
			}
		}

		results_offset +=
		    FUNC6(FUNC2(results_buf, results_offset), "\n");
	}

	results_offset += FUNC6(FUNC2(results_buf,
						  results_offset),
				  "fifo contained %d elements", num_elements);

	/* Add 1 for string NULL termination */
	*parsed_results_bytes = results_offset + 1;

	return DBG_STATUS_OK;
}