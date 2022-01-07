
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int qed_parse_mcp_trace_buf (struct qed_hwfn*,int *,int ,int ,int ,char*,int *) ;

enum dbg_status qed_print_mcp_trace_line(struct qed_hwfn *p_hwfn,
      u8 *dump_buf,
      u32 num_dumped_bytes,
      char *results_buf)
{
 u32 parsed_results_bytes;

 return qed_parse_mcp_trace_buf(p_hwfn,
           dump_buf,
           num_dumped_bytes,
           0,
           num_dumped_bytes,
           results_buf, &parsed_results_bytes);
}
