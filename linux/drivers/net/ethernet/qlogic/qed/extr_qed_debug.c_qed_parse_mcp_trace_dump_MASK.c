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
typedef  int u32 ;
struct qed_hwfn {int dummy; } ;
struct mcp_trace {scalar_t__ signature; int trace_oldest; int /*<<< orphan*/  size; int /*<<< orphan*/  trace_prod; } ;
struct dbg_tools_user_data {int* mcp_trace_user_meta_buf; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_MCP_TRACE_BAD_DATA ; 
 int DBG_STATUS_MCP_TRACE_NO_META ; 
 int DBG_STATUS_OK ; 
 scalar_t__ MFW_TRACE_SIGNATURE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct dbg_tools_user_data* FUNC1 (struct qed_hwfn*) ; 
 int FUNC2 (struct qed_hwfn*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*) ; 
 int FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,char const**,char const**,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,char const**,int*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static enum dbg_status FUNC9(struct qed_hwfn *p_hwfn,
						u32 *dump_buf,
						char *results_buf,
						u32 *parsed_results_bytes,
						bool free_meta_data)
{
	const char *section_name, *param_name, *param_str_val;
	u32 data_size, trace_data_dwords, trace_meta_dwords;
	u32 offset, results_offset, results_buf_bytes;
	u32 param_num_val, num_section_params;
	struct mcp_trace *trace;
	enum dbg_status status;
	const u32 *meta_buf;
	u8 *trace_buf;

	*parsed_results_bytes = 0;

	/* Read global_params section */
	dump_buf += FUNC7(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC8(section_name, "global_params"))
		return DBG_STATUS_MCP_TRACE_BAD_DATA;

	/* Print global params */
	dump_buf += FUNC5(dump_buf,
					     num_section_params,
					     results_buf, &results_offset);

	/* Read trace_data section */
	dump_buf += FUNC7(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC8(section_name, "mcp_trace_data") || num_section_params != 1)
		return DBG_STATUS_MCP_TRACE_BAD_DATA;
	dump_buf += FUNC6(dump_buf,
				   &param_name, &param_str_val, &param_num_val);
	if (FUNC8(param_name, "size"))
		return DBG_STATUS_MCP_TRACE_BAD_DATA;
	trace_data_dwords = param_num_val;

	/* Prepare trace info */
	trace = (struct mcp_trace *)dump_buf;
	if (trace->signature != MFW_TRACE_SIGNATURE || !trace->size)
		return DBG_STATUS_MCP_TRACE_BAD_DATA;

	trace_buf = (u8 *)dump_buf + sizeof(*trace);
	offset = trace->trace_oldest;
	data_size = FUNC0(trace->trace_prod, offset, trace->size);
	dump_buf += trace_data_dwords;

	/* Read meta_data section */
	dump_buf += FUNC7(dump_buf,
					 &section_name, &num_section_params);
	if (FUNC8(section_name, "mcp_trace_meta"))
		return DBG_STATUS_MCP_TRACE_BAD_DATA;
	dump_buf += FUNC6(dump_buf,
				   &param_name, &param_str_val, &param_num_val);
	if (FUNC8(param_name, "size"))
		return DBG_STATUS_MCP_TRACE_BAD_DATA;
	trace_meta_dwords = param_num_val;

	/* Choose meta data buffer */
	if (!trace_meta_dwords) {
		/* Dump doesn't include meta data */
		struct dbg_tools_user_data *dev_user_data =
			FUNC1(p_hwfn);

		if (!dev_user_data->mcp_trace_user_meta_buf)
			return DBG_STATUS_MCP_TRACE_NO_META;

		meta_buf = dev_user_data->mcp_trace_user_meta_buf;
	} else {
		/* Dump includes meta data */
		meta_buf = dump_buf;
	}

	/* Allocate meta data memory */
	status = FUNC2(p_hwfn, meta_buf);
	if (status != DBG_STATUS_OK)
		return status;

	status = FUNC4(p_hwfn,
					 trace_buf,
					 trace->size,
					 offset,
					 data_size,
					 results_buf ?
					 results_buf + results_offset :
					 NULL,
					 &results_buf_bytes);
	if (status != DBG_STATUS_OK)
		return status;

	if (free_meta_data)
		FUNC3(p_hwfn);

	*parsed_results_bytes = results_offset + results_buf_bytes;

	return DBG_STATUS_OK;
}