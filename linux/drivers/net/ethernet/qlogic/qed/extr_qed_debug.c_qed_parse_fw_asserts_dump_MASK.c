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
typedef  scalar_t__ u32 ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_FW_ASSERTS_PARSE_FAILED ; 
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const**,char const**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char const**,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static enum dbg_status FUNC6(u32 *dump_buf,
						 char *results_buf,
						 u32 *parsed_results_bytes)
{
	u32 num_section_params, param_num_val, i, results_offset = 0;
	const char *param_name, *param_str_val, *section_name;
	bool last_section_found = false;

	*parsed_results_bytes = 0;

	/* Read global_params section */
	dump_buf += FUNC3(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC5(section_name, "global_params"))
		return DBG_STATUS_FW_ASSERTS_PARSE_FAILED;

	/* Print global params */
	dump_buf += FUNC1(dump_buf,
					     num_section_params,
					     results_buf, &results_offset);

	while (!last_section_found) {
		dump_buf += FUNC3(dump_buf,
						 &section_name,
						 &num_section_params);
		if (!FUNC5(section_name, "fw_asserts")) {
			/* Extract params */
			const char *storm_letter = NULL;
			u32 storm_dump_size = 0;

			for (i = 0; i < num_section_params; i++) {
				dump_buf += FUNC2(dump_buf,
							   &param_name,
							   &param_str_val,
							   &param_num_val);
				if (!FUNC5(param_name, "storm"))
					storm_letter = param_str_val;
				else if (!FUNC5(param_name, "size"))
					storm_dump_size = param_num_val;
				else
					return
					    DBG_STATUS_FW_ASSERTS_PARSE_FAILED;
			}

			if (!storm_letter || !storm_dump_size)
				return DBG_STATUS_FW_ASSERTS_PARSE_FAILED;

			/* Print data */
			results_offset +=
			    FUNC4(FUNC0(results_buf,
						    results_offset),
				    "\n%sSTORM_ASSERT: size=%d\n",
				    storm_letter, storm_dump_size);
			for (i = 0; i < storm_dump_size; i++, dump_buf++)
				results_offset +=
				    FUNC4(FUNC0(results_buf,
							    results_offset),
					    "%08x\n", *dump_buf);
		} else if (!FUNC5(section_name, "last")) {
			last_section_found = true;
		} else {
			return DBG_STATUS_FW_ASSERTS_PARSE_FAILED;
		}
	}

	/* Add 1 for string NULL termination */
	*parsed_results_bytes = results_offset + 1;

	return DBG_STATUS_OK;
}