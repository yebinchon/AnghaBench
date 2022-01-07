
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_hwfn {int dummy; } ;
struct mcp_trace {scalar_t__ signature; int trace_oldest; int size; int trace_prod; } ;
struct dbg_tools_user_data {int* mcp_trace_user_meta_buf; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_MCP_TRACE_BAD_DATA ;
 int DBG_STATUS_MCP_TRACE_NO_META ;
 int DBG_STATUS_OK ;
 scalar_t__ MFW_TRACE_SIGNATURE ;
 int qed_cyclic_sub (int ,int,int ) ;
 struct dbg_tools_user_data* qed_dbg_get_user_data (struct qed_hwfn*) ;
 int qed_mcp_trace_alloc_meta_data (struct qed_hwfn*,int const*) ;
 int qed_mcp_trace_free_meta_data (struct qed_hwfn*) ;
 int qed_parse_mcp_trace_buf (struct qed_hwfn*,int *,int ,int,int,char*,int*) ;
 int qed_print_section_params (int*,int,char*,int*) ;
 int qed_read_param (int*,char const**,char const**,int*) ;
 int qed_read_section_hdr (int*,char const**,int*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static enum dbg_status qed_parse_mcp_trace_dump(struct qed_hwfn *p_hwfn,
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


 dump_buf += qed_read_section_hdr(dump_buf,
      &section_name, &num_section_params);
 if (strcmp(section_name, "global_params"))
  return DBG_STATUS_MCP_TRACE_BAD_DATA;


 dump_buf += qed_print_section_params(dump_buf,
          num_section_params,
          results_buf, &results_offset);


 dump_buf += qed_read_section_hdr(dump_buf,
      &section_name, &num_section_params);
 if (strcmp(section_name, "mcp_trace_data") || num_section_params != 1)
  return DBG_STATUS_MCP_TRACE_BAD_DATA;
 dump_buf += qed_read_param(dump_buf,
       &param_name, &param_str_val, &param_num_val);
 if (strcmp(param_name, "size"))
  return DBG_STATUS_MCP_TRACE_BAD_DATA;
 trace_data_dwords = param_num_val;


 trace = (struct mcp_trace *)dump_buf;
 if (trace->signature != MFW_TRACE_SIGNATURE || !trace->size)
  return DBG_STATUS_MCP_TRACE_BAD_DATA;

 trace_buf = (u8 *)dump_buf + sizeof(*trace);
 offset = trace->trace_oldest;
 data_size = qed_cyclic_sub(trace->trace_prod, offset, trace->size);
 dump_buf += trace_data_dwords;


 dump_buf += qed_read_section_hdr(dump_buf,
      &section_name, &num_section_params);
 if (strcmp(section_name, "mcp_trace_meta"))
  return DBG_STATUS_MCP_TRACE_BAD_DATA;
 dump_buf += qed_read_param(dump_buf,
       &param_name, &param_str_val, &param_num_val);
 if (strcmp(param_name, "size"))
  return DBG_STATUS_MCP_TRACE_BAD_DATA;
 trace_meta_dwords = param_num_val;


 if (!trace_meta_dwords) {

  struct dbg_tools_user_data *dev_user_data =
   qed_dbg_get_user_data(p_hwfn);

  if (!dev_user_data->mcp_trace_user_meta_buf)
   return DBG_STATUS_MCP_TRACE_NO_META;

  meta_buf = dev_user_data->mcp_trace_user_meta_buf;
 } else {

  meta_buf = dump_buf;
 }


 status = qed_mcp_trace_alloc_meta_data(p_hwfn, meta_buf);
 if (status != DBG_STATUS_OK)
  return status;

 status = qed_parse_mcp_trace_buf(p_hwfn,
      trace_buf,
      trace->size,
      offset,
      data_size,
      results_buf ?
      results_buf + results_offset :
      ((void*)0),
      &results_buf_bytes);
 if (status != DBG_STATUS_OK)
  return status;

 if (free_meta_data)
  qed_mcp_trace_free_meta_data(p_hwfn);

 *parsed_results_bytes = results_offset + results_buf_bytes;

 return DBG_STATUS_OK;
}
