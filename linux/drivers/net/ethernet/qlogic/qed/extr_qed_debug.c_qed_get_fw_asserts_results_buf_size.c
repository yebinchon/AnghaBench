
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int qed_parse_fw_asserts_dump (int *,int *,int *) ;

enum dbg_status qed_get_fw_asserts_results_buf_size(struct qed_hwfn *p_hwfn,
          u32 *dump_buf,
          u32 num_dumped_dwords,
          u32 *results_buf_size)
{
 return qed_parse_fw_asserts_dump(dump_buf, ((void*)0), results_buf_size);
}
