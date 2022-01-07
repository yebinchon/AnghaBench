
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_instr_queue {int iqcmd_64B; } ;
struct octeon_device {scalar_t__* instr_queue; } ;



__attribute__((used)) static inline int IQ_INSTR_MODE_64B(struct octeon_device *oct, int iq_no)
{
 struct octeon_instr_queue *iq =
     (struct octeon_instr_queue *)oct->instr_queue[iq_no];
 return iq->iqcmd_64B;
}
