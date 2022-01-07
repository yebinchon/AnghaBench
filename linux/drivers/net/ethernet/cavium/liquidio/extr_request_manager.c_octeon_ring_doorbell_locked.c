
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct octeon_instr_queue {int post_lock; scalar_t__ fill_cnt; } ;
struct octeon_device {struct octeon_instr_queue** instr_queue; } ;


 int ring_doorbell (struct octeon_device*,struct octeon_instr_queue*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
octeon_ring_doorbell_locked(struct octeon_device *oct, u32 iq_no)
{
 struct octeon_instr_queue *iq;

 iq = oct->instr_queue[iq_no];
 spin_lock(&iq->post_lock);
 if (iq->fill_cnt)
  ring_doorbell(oct, iq);
 spin_unlock(&iq->post_lock);
}
