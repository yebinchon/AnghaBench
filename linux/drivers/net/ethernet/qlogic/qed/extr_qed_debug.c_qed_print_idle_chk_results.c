
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int qed_parse_idle_chk_dump (int *,int ,char*,int *,int *,int *) ;

enum dbg_status qed_print_idle_chk_results(struct qed_hwfn *p_hwfn,
        u32 *dump_buf,
        u32 num_dumped_dwords,
        char *results_buf,
        u32 *num_errors,
        u32 *num_warnings)
{
 u32 parsed_buf_size;

 return qed_parse_idle_chk_dump(dump_buf,
           num_dumped_dwords,
           results_buf,
           &parsed_buf_size,
           num_errors, num_warnings);
}
