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
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct mcp_trace {int dummy; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int /*<<< orphan*/  BYTES_IN_DWORD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_MCP_TRACE_META_SIZE ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_NO_MCP ; 
 int DBG_STATUS_NVRAM_GET_IMAGE_FAILED ; 
 int DBG_STATUS_OK ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  SPLIT_TYPE_NONE ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int*,int,int) ; 
 int FUNC4 (int*,int,int) ; 
 int FUNC5 (int*,int,char*,int) ; 
 int FUNC6 (int*,int,char*,int) ; 
 int FUNC7 (int*,int,char*,char*) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_ptt*,int*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_hwfn*,struct qed_ptt*) ; 
 scalar_t__ FUNC11 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC12 (struct qed_hwfn*,struct qed_ptt*,int*,int*) ; 
 int FUNC13 (struct qed_hwfn*,struct qed_ptt*,int,int*,int*,int*) ; 
 int FUNC14 (struct qed_hwfn*,struct qed_ptt*,int,int,int*) ; 

__attribute__((used)) static enum dbg_status FUNC15(struct qed_hwfn *p_hwfn,
					  struct qed_ptt *p_ptt,
					  u32 *dump_buf,
					  bool dump, u32 *num_dumped_dwords)
{
	u32 trace_data_grc_addr, trace_data_size_bytes, trace_data_size_dwords;
	u32 trace_meta_size_dwords = 0, running_bundle_id, offset = 0;
	u32 trace_meta_offset_bytes = 0, trace_meta_size_bytes = 0;
	enum dbg_status status;
	bool mcp_access;
	int halted = 0;

	*num_dumped_dwords = 0;

	mcp_access = !FUNC9(p_hwfn, DBG_GRC_PARAM_NO_MCP);

	/* Get trace data info */
	status = FUNC12(p_hwfn,
					     p_ptt,
					     &trace_data_grc_addr,
					     &trace_data_size_bytes);
	if (status != DBG_STATUS_OK)
		return status;

	/* Dump global params */
	offset += FUNC3(p_hwfn,
						p_ptt,
						dump_buf + offset, dump, 1);
	offset += FUNC7(dump_buf + offset,
				     dump, "dump-type", "mcp-trace");

	/* Halt MCP while reading from scratchpad so the read data will be
	 * consistent. if halt fails, MCP trace is taken anyway, with a small
	 * risk that it may be corrupt.
	 */
	if (dump && mcp_access) {
		halted = !FUNC10(p_hwfn, p_ptt);
		if (!halted)
			FUNC2(p_hwfn, "MCP halt failed!\n");
	}

	/* Find trace data size */
	trace_data_size_dwords =
	    FUNC1(trace_data_size_bytes + sizeof(struct mcp_trace),
			 BYTES_IN_DWORD);

	/* Dump trace data section header and param */
	offset += FUNC6(dump_buf + offset,
				       dump, "mcp_trace_data", 1);
	offset += FUNC5(dump_buf + offset,
				     dump, "size", trace_data_size_dwords);

	/* Read trace data from scratchpad into dump buffer */
	offset += FUNC8(p_hwfn,
					  p_ptt,
					  dump_buf + offset,
					  dump,
					  FUNC0(trace_data_grc_addr),
					  trace_data_size_dwords, false,
					  SPLIT_TYPE_NONE, 0);

	/* Resume MCP (only if halt succeeded) */
	if (halted && FUNC11(p_hwfn, p_ptt))
		FUNC2(p_hwfn, "Failed to resume MCP after halt!\n");

	/* Dump trace meta section header */
	offset += FUNC6(dump_buf + offset,
				       dump, "mcp_trace_meta", 1);

	/* If MCP Trace meta size parameter was set, use it.
	 * Otherwise, read trace meta.
	 * trace_meta_size_bytes is dword-aligned.
	 */
	trace_meta_size_bytes =
		FUNC9(p_hwfn, DBG_GRC_PARAM_MCP_TRACE_META_SIZE);
	if ((!trace_meta_size_bytes || dump) && mcp_access) {
		status = FUNC13(p_hwfn,
						     p_ptt,
						     trace_data_size_bytes,
						     &running_bundle_id,
						     &trace_meta_offset_bytes,
						     &trace_meta_size_bytes);
		if (status == DBG_STATUS_OK)
			trace_meta_size_dwords =
				FUNC0(trace_meta_size_bytes);
	}

	/* Dump trace meta size param */
	offset += FUNC5(dump_buf + offset,
				     dump, "size", trace_meta_size_dwords);

	/* Read trace meta image into dump buffer */
	if (dump && trace_meta_size_dwords)
		status = FUNC14(p_hwfn,
						 p_ptt,
						 trace_meta_offset_bytes,
						 trace_meta_size_bytes,
						 dump_buf + offset);
	if (status == DBG_STATUS_OK)
		offset += trace_meta_size_dwords;

	/* Dump last section */
	offset += FUNC4(dump_buf, offset, dump);

	*num_dumped_dwords = offset;

	/* If no mcp access, indicate that the dump doesn't contain the meta
	 * data from NVRAM.
	 */
	return mcp_access ? status : DBG_STATUS_NVRAM_GET_IMAGE_FAILED;
}