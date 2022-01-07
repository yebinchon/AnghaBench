
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct octeon_instr_queue {size_t last_db_time; size_t db_timeout; int instr_pending; } ;
struct octeon_device {struct octeon_instr_queue** instr_queue; } ;


 int atomic_read (int *) ;
 size_t jiffies ;
 int lio_enable_irq (int *,struct octeon_instr_queue*) ;
 int octeon_flush_iq (struct octeon_device*,struct octeon_instr_queue*,int ) ;
 int time_after (size_t,unsigned long) ;

__attribute__((used)) static void __check_db_timeout(struct octeon_device *oct, u64 iq_no)
{
 struct octeon_instr_queue *iq;
 u64 next_time;

 if (!oct)
  return;

 iq = oct->instr_queue[iq_no];
 if (!iq)
  return;


 if (!atomic_read(&iq->instr_pending))
  return;

 next_time = iq->last_db_time + iq->db_timeout;
 if (!time_after(jiffies, (unsigned long)next_time))
  return;
 iq->last_db_time = jiffies;


 octeon_flush_iq(oct, iq, 0);

 lio_enable_irq(((void*)0), iq);
}
