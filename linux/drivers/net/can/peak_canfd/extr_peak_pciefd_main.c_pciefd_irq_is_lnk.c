
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int pciefd_irq_is_lnk(u32 irq_status)
{
 return irq_status & 0x00010000;
}
