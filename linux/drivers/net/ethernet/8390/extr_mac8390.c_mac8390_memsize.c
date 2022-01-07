
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hwreg_present (unsigned short volatile*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int mac8390_memsize(unsigned long membase)
{
 unsigned long flags;
 int i, j;

 local_irq_save(flags);

 for (i = 0; i < 8; i++) {
  volatile unsigned short *m = (unsigned short *)(membase + (i * 0x1000));



  if (hwreg_present(m) == 0)
   break;


  *m = 0xA5A0 | i;

  if (*m != (0xA5A0 | i))
   break;


  for (j = 0; j < i; j++) {
   volatile unsigned short *p = (unsigned short *)(membase + (j * 0x1000));
   if (*p != (0xA5A0 | j))
    break;
  }
 }
 local_irq_restore(flags);




 return i * 0x1000;
}
