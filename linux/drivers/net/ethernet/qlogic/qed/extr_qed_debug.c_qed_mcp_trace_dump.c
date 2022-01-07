
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct mcp_trace {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int BYTES_IN_DWORD ;
 int BYTES_TO_DWORDS (int) ;
 int DBG_GRC_PARAM_MCP_TRACE_META_SIZE ;
 int DBG_GRC_PARAM_NO_MCP ;
 int DBG_STATUS_NVRAM_GET_IMAGE_FAILED ;
 int DBG_STATUS_OK ;
 int DIV_ROUND_UP (int,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int SPLIT_TYPE_NONE ;
 int qed_dump_common_global_params (struct qed_hwfn*,struct qed_ptt*,int*,int,int) ;
 int qed_dump_last_section (int*,int,int) ;
 int qed_dump_num_param (int*,int,char*,int) ;
 int qed_dump_section_hdr (int*,int,char*,int) ;
 int qed_dump_str_param (int*,int,char*,char*) ;
 int qed_grc_dump_addr_range (struct qed_hwfn*,struct qed_ptt*,int*,int,int,int,int,int ,int ) ;
 int qed_grc_get_param (struct qed_hwfn*,int ) ;
 int qed_mcp_halt (struct qed_hwfn*,struct qed_ptt*) ;
 scalar_t__ qed_mcp_resume (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_mcp_trace_get_data_info (struct qed_hwfn*,struct qed_ptt*,int*,int*) ;
 int qed_mcp_trace_get_meta_info (struct qed_hwfn*,struct qed_ptt*,int,int*,int*,int*) ;
 int qed_mcp_trace_read_meta (struct qed_hwfn*,struct qed_ptt*,int,int,int*) ;

__attribute__((used)) static enum dbg_status qed_mcp_trace_dump(struct qed_hwfn *p_hwfn,
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

 mcp_access = !qed_grc_get_param(p_hwfn, DBG_GRC_PARAM_NO_MCP);


 status = qed_mcp_trace_get_data_info(p_hwfn,
          p_ptt,
          &trace_data_grc_addr,
          &trace_data_size_bytes);
 if (status != DBG_STATUS_OK)
  return status;


 offset += qed_dump_common_global_params(p_hwfn,
      p_ptt,
      dump_buf + offset, dump, 1);
 offset += qed_dump_str_param(dump_buf + offset,
         dump, "dump-type", "mcp-trace");





 if (dump && mcp_access) {
  halted = !qed_mcp_halt(p_hwfn, p_ptt);
  if (!halted)
   DP_NOTICE(p_hwfn, "MCP halt failed!\n");
 }


 trace_data_size_dwords =
     DIV_ROUND_UP(trace_data_size_bytes + sizeof(struct mcp_trace),
    BYTES_IN_DWORD);


 offset += qed_dump_section_hdr(dump_buf + offset,
           dump, "mcp_trace_data", 1);
 offset += qed_dump_num_param(dump_buf + offset,
         dump, "size", trace_data_size_dwords);


 offset += qed_grc_dump_addr_range(p_hwfn,
       p_ptt,
       dump_buf + offset,
       dump,
       BYTES_TO_DWORDS(trace_data_grc_addr),
       trace_data_size_dwords, 0,
       SPLIT_TYPE_NONE, 0);


 if (halted && qed_mcp_resume(p_hwfn, p_ptt))
  DP_NOTICE(p_hwfn, "Failed to resume MCP after halt!\n");


 offset += qed_dump_section_hdr(dump_buf + offset,
           dump, "mcp_trace_meta", 1);





 trace_meta_size_bytes =
  qed_grc_get_param(p_hwfn, DBG_GRC_PARAM_MCP_TRACE_META_SIZE);
 if ((!trace_meta_size_bytes || dump) && mcp_access) {
  status = qed_mcp_trace_get_meta_info(p_hwfn,
           p_ptt,
           trace_data_size_bytes,
           &running_bundle_id,
           &trace_meta_offset_bytes,
           &trace_meta_size_bytes);
  if (status == DBG_STATUS_OK)
   trace_meta_size_dwords =
    BYTES_TO_DWORDS(trace_meta_size_bytes);
 }


 offset += qed_dump_num_param(dump_buf + offset,
         dump, "size", trace_meta_size_dwords);


 if (dump && trace_meta_size_dwords)
  status = qed_mcp_trace_read_meta(p_hwfn,
       p_ptt,
       trace_meta_offset_bytes,
       trace_meta_size_bytes,
       dump_buf + offset);
 if (status == DBG_STATUS_OK)
  offset += trace_meta_size_dwords;


 offset += qed_dump_last_section(dump_buf, offset, dump);

 *num_dumped_dwords = offset;




 return mcp_access ? status : DBG_STATUS_NVRAM_GET_IMAGE_FAILED;
}
