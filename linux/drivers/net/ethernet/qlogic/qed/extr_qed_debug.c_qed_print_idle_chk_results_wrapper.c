
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int qed_print_idle_chk_results (struct qed_hwfn*,int *,int ,char*,int *,int *) ;

__attribute__((used)) static enum dbg_status
qed_print_idle_chk_results_wrapper(struct qed_hwfn *p_hwfn,
       u32 *dump_buf,
       u32 num_dumped_dwords,
       char *results_buf)
{
 u32 num_errors, num_warnnings;

 return qed_print_idle_chk_results(p_hwfn, dump_buf, num_dumped_dwords,
       results_buf, &num_errors,
       &num_warnnings);
}
