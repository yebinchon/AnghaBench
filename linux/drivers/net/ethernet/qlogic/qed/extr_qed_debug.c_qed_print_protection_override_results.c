
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int qed_parse_protection_override_dump (int *,char*,int *) ;

enum dbg_status qed_print_protection_override_results(struct qed_hwfn *p_hwfn,
            u32 *dump_buf,
            u32 num_dumped_dwords,
            char *results_buf)
{
 u32 parsed_buf_size;

 return qed_parse_protection_override_dump(dump_buf,
        results_buf,
        &parsed_buf_size);
}
