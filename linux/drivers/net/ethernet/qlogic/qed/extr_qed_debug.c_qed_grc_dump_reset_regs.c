
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qed_ptt {int dummy; } ;
struct dbg_tools_data {size_t chip_id; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_2__ {int addr; int * exists; } ;


 int BYTES_TO_DWORDS (int ) ;
 size_t MAX_DBG_RESET_REGS ;
 int SPLIT_TYPE_NONE ;
 size_t qed_grc_dump_reg_entry (struct qed_hwfn*,struct qed_ptt*,size_t*,int,int ,int,int,int ,int ) ;
 size_t qed_grc_dump_regs_hdr (size_t*,int,size_t,int ,int ,int *,int *) ;
 TYPE_1__* s_reset_regs_defs ;

__attribute__((used)) static u32 qed_grc_dump_reset_regs(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       u32 *dump_buf, bool dump)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u32 i, offset = 0, num_regs = 0;


 offset += qed_grc_dump_regs_hdr(dump_buf,
     0, 0,
     SPLIT_TYPE_NONE, 0, ((void*)0), ((void*)0));


 for (i = 0; i < MAX_DBG_RESET_REGS; i++) {
  if (!s_reset_regs_defs[i].exists[dev_data->chip_id])
   continue;

  offset += qed_grc_dump_reg_entry(p_hwfn,
       p_ptt,
       dump_buf + offset,
       dump,
       BYTES_TO_DWORDS
       (s_reset_regs_defs[i].addr), 1,
       0, SPLIT_TYPE_NONE, 0);
  num_regs++;
 }


 if (dump)
  qed_grc_dump_regs_hdr(dump_buf,
          1, num_regs, SPLIT_TYPE_NONE,
          0, ((void*)0), ((void*)0));

 return offset;
}
