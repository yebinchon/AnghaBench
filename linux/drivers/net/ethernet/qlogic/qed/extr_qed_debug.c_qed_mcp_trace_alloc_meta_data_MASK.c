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
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;
struct mcp_trace_meta {int is_allocated; scalar_t__ modules_num; char** modules; scalar_t__ formats_num; struct mcp_trace_format* formats; } ;
struct mcp_trace_format {size_t data; char* format_str; } ;
struct dbg_tools_user_data {struct mcp_trace_meta mcp_trace_meta; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_INVALID_TRACE_SIGNATURE ; 
 int DBG_STATUS_OK ; 
 int DBG_STATUS_VIRT_MEM_ALLOC_FAILED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MCP_TRACE_FORMAT_LEN_MASK ; 
 size_t MCP_TRACE_FORMAT_LEN_SHIFT ; 
 size_t MCP_TRACE_MAX_MODULE_LEN ; 
 scalar_t__ NVM_MAGIC_VALUE ; 
 void* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mcp_trace_meta*,int /*<<< orphan*/ ,int) ; 
 struct dbg_tools_user_data* FUNC3 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*) ; 
 void* FUNC5 (size_t*,scalar_t__*) ; 
 scalar_t__ FUNC6 (size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (size_t*,scalar_t__*,size_t,char*) ; 

__attribute__((used)) static enum dbg_status
FUNC8(struct qed_hwfn *p_hwfn,
			      const u32 *meta_buf)
{
	struct dbg_tools_user_data *dev_user_data;
	u32 offset = 0, signature, i;
	struct mcp_trace_meta *meta;
	u8 *meta_buf_bytes;

	dev_user_data = FUNC3(p_hwfn);
	meta = &dev_user_data->mcp_trace_meta;
	meta_buf_bytes = (u8 *)meta_buf;

	/* Free the previous meta before loading a new one. */
	if (meta->is_allocated)
		FUNC4(p_hwfn);

	FUNC2(meta, 0, sizeof(*meta));

	/* Read first signature */
	signature = FUNC6(meta_buf_bytes, &offset);
	if (signature != NVM_MAGIC_VALUE)
		return DBG_STATUS_INVALID_TRACE_SIGNATURE;

	/* Read no. of modules and allocate memory for their pointers */
	meta->modules_num = FUNC5(meta_buf_bytes, &offset);
	meta->modules = FUNC0(meta->modules_num, sizeof(char *),
				GFP_KERNEL);
	if (!meta->modules)
		return DBG_STATUS_VIRT_MEM_ALLOC_FAILED;

	/* Allocate and read all module strings */
	for (i = 0; i < meta->modules_num; i++) {
		u8 module_len = FUNC5(meta_buf_bytes, &offset);

		*(meta->modules + i) = FUNC1(module_len, GFP_KERNEL);
		if (!(*(meta->modules + i))) {
			/* Update number of modules to be released */
			meta->modules_num = i ? i - 1 : 0;
			return DBG_STATUS_VIRT_MEM_ALLOC_FAILED;
		}

		FUNC7(meta_buf_bytes, &offset, module_len,
				      *(meta->modules + i));
		if (module_len > MCP_TRACE_MAX_MODULE_LEN)
			(*(meta->modules + i))[MCP_TRACE_MAX_MODULE_LEN] = '\0';
	}

	/* Read second signature */
	signature = FUNC6(meta_buf_bytes, &offset);
	if (signature != NVM_MAGIC_VALUE)
		return DBG_STATUS_INVALID_TRACE_SIGNATURE;

	/* Read number of formats and allocate memory for all formats */
	meta->formats_num = FUNC6(meta_buf_bytes, &offset);
	meta->formats = FUNC0(meta->formats_num,
				sizeof(struct mcp_trace_format),
				GFP_KERNEL);
	if (!meta->formats)
		return DBG_STATUS_VIRT_MEM_ALLOC_FAILED;

	/* Allocate and read all strings */
	for (i = 0; i < meta->formats_num; i++) {
		struct mcp_trace_format *format_ptr = &meta->formats[i];
		u8 format_len;

		format_ptr->data = FUNC6(meta_buf_bytes,
							   &offset);
		format_len =
		    (format_ptr->data &
		     MCP_TRACE_FORMAT_LEN_MASK) >> MCP_TRACE_FORMAT_LEN_SHIFT;
		format_ptr->format_str = FUNC1(format_len, GFP_KERNEL);
		if (!format_ptr->format_str) {
			/* Update number of modules to be released */
			meta->formats_num = i ? i - 1 : 0;
			return DBG_STATUS_VIRT_MEM_ALLOC_FAILED;
		}

		FUNC7(meta_buf_bytes,
				      &offset,
				      format_len, format_ptr->format_str);
	}

	meta->is_allocated = true;
	return DBG_STATUS_OK;
}