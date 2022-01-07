
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct octeon_instr_queue {scalar_t__ max_count; scalar_t__ reset_instr_cnt; int inst_cnt_reg; } ;


 scalar_t__ readl (int ) ;

u32
lio_cn6xxx_update_read_index(struct octeon_instr_queue *iq)
{
 u32 new_idx = readl(iq->inst_cnt_reg);





 if (iq->reset_instr_cnt < new_idx)
  new_idx -= iq->reset_instr_cnt;
 else
  new_idx += (0xffffffff - iq->reset_instr_cnt) + 1;




 new_idx %= iq->max_count;

 return new_idx;
}
