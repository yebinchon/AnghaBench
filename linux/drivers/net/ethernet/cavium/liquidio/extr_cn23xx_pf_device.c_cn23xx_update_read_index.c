
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_instr_queue {int pkt_in_done; int max_count; int octeon_read_index; int inst_cnt_reg; } ;


 int CN23XX_PKT_IN_DONE_CNT_MASK ;
 int readl (int ) ;

__attribute__((used)) static u32 cn23xx_update_read_index(struct octeon_instr_queue *iq)
{
 u32 new_idx;
 u32 last_done;
 u32 pkt_in_done = readl(iq->inst_cnt_reg);

 last_done = pkt_in_done - iq->pkt_in_done;
 iq->pkt_in_done = pkt_in_done;





 new_idx = (iq->octeon_read_index +
     (u32)(last_done & CN23XX_PKT_IN_DONE_CNT_MASK)) %
    iq->max_count;

 return new_idx;
}
