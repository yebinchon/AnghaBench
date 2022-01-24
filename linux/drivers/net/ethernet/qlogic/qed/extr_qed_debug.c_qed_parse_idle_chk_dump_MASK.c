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
typedef  int u32 ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_2__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 size_t BIN_BUF_DBG_IDLE_CHK_PARSING_DATA ; 
 size_t BIN_BUF_DBG_PARSING_STRINGS ; 
 int DBG_STATUS_DBG_ARRAY_NOT_SET ; 
 int DBG_STATUS_IDLE_CHK_PARSE_FAILED ; 
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int*,int*,int,int,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,char const**,char const**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const**,int*) ; 
 TYPE_1__* s_user_dbg_arrays ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static enum dbg_status FUNC7(u32 *dump_buf,
					       u32 num_dumped_dwords,
					       char *results_buf,
					       u32 *parsed_results_bytes,
					       u32 *num_errors,
					       u32 *num_warnings)
{
	const char *section_name, *param_name, *param_str_val;
	u32 *dump_buf_end = dump_buf + num_dumped_dwords;
	u32 num_section_params = 0, num_rules;

	/* Offset in results_buf in bytes */
	u32 results_offset = 0;

	*parsed_results_bytes = 0;
	*num_errors = 0;
	*num_warnings = 0;

	if (!s_user_dbg_arrays[BIN_BUF_DBG_PARSING_STRINGS].ptr ||
	    !s_user_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_PARSING_DATA].ptr)
		return DBG_STATUS_DBG_ARRAY_NOT_SET;

	/* Read global_params section */
	dump_buf += FUNC4(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC6(section_name, "global_params"))
		return DBG_STATUS_IDLE_CHK_PARSE_FAILED;

	/* Print global params */
	dump_buf += FUNC2(dump_buf,
					     num_section_params,
					     results_buf, &results_offset);

	/* Read idle_chk section */
	dump_buf += FUNC4(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC6(section_name, "idle_chk") || num_section_params != 1)
		return DBG_STATUS_IDLE_CHK_PARSE_FAILED;
	dump_buf += FUNC3(dump_buf,
				   &param_name, &param_str_val, &num_rules);
	if (FUNC6(param_name, "num_rules"))
		return DBG_STATUS_IDLE_CHK_PARSE_FAILED;

	if (num_rules) {
		u32 rules_print_size;

		/* Print FW output */
		results_offset +=
		    FUNC5(FUNC0(results_buf,
					    results_offset),
			    "FW_IDLE_CHECK:\n");
		rules_print_size =
			FUNC1(dump_buf,
						      dump_buf_end,
						      num_rules,
						      true,
						      results_buf ?
						      results_buf +
						      results_offset :
						      NULL,
						      num_errors,
						      num_warnings);
		results_offset += rules_print_size;
		if (!rules_print_size)
			return DBG_STATUS_IDLE_CHK_PARSE_FAILED;

		/* Print LSI output */
		results_offset +=
		    FUNC5(FUNC0(results_buf,
					    results_offset),
			    "\nLSI_IDLE_CHECK:\n");
		rules_print_size =
			FUNC1(dump_buf,
						      dump_buf_end,
						      num_rules,
						      false,
						      results_buf ?
						      results_buf +
						      results_offset :
						      NULL,
						      num_errors,
						      num_warnings);
		results_offset += rules_print_size;
		if (!rules_print_size)
			return DBG_STATUS_IDLE_CHK_PARSE_FAILED;
	}

	/* Print errors/warnings count */
	if (*num_errors)
		results_offset +=
		    FUNC5(FUNC0(results_buf,
					    results_offset),
			    "\nIdle Check failed!!! (with %d errors and %d warnings)\n",
			    *num_errors, *num_warnings);
	else if (*num_warnings)
		results_offset +=
		    FUNC5(FUNC0(results_buf,
					    results_offset),
			    "\nIdle Check completed successfully (with %d warnings)\n",
			    *num_warnings);
	else
		results_offset +=
		    FUNC5(FUNC0(results_buf,
					    results_offset),
			    "\nIdle Check completed successfully\n");

	/* Add 1 for string NULL termination */
	*parsed_results_bytes = results_offset + 1;

	return DBG_STATUS_OK;
}