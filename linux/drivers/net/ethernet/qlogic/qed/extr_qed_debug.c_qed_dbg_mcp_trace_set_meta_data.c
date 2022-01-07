
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
struct dbg_tools_user_data {int const* mcp_trace_user_meta_buf; } ;


 struct dbg_tools_user_data* qed_dbg_get_user_data (struct qed_hwfn*) ;

void qed_dbg_mcp_trace_set_meta_data(struct qed_hwfn *p_hwfn,
         const u32 *meta_buf)
{
 struct dbg_tools_user_data *dev_user_data =
  qed_dbg_get_user_data(p_hwfn);

 dev_user_data->mcp_trace_user_meta_buf = meta_buf;
}
