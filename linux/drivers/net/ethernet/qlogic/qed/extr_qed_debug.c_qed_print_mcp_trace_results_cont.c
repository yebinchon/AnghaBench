
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int qed_parse_mcp_trace_dump (struct qed_hwfn*,int *,char*,int *,int) ;

enum dbg_status qed_print_mcp_trace_results_cont(struct qed_hwfn *p_hwfn,
       u32 *dump_buf,
       char *results_buf)
{
 u32 parsed_buf_size;

 return qed_parse_mcp_trace_dump(p_hwfn, dump_buf, results_buf,
     &parsed_buf_size, 0);
}
