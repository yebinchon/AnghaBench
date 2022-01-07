
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_instr_queue {int last_db_time; scalar_t__ fill_cnt; int doorbell_reg; } ;
struct octeon_device {int status; } ;


 scalar_t__ OCT_DEV_RUNNING ;
 scalar_t__ atomic_read (int *) ;
 int jiffies ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static inline void
ring_doorbell(struct octeon_device *oct, struct octeon_instr_queue *iq)
{
 if (atomic_read(&oct->status) == OCT_DEV_RUNNING) {
  writel(iq->fill_cnt, iq->doorbell_reg);

  iq->fill_cnt = 0;
  iq->last_db_time = jiffies;
  return;
 }
}
