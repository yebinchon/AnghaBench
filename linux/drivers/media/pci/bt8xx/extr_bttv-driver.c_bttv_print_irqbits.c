
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int ARRAY_SIZE (int *) ;
 int * irq_name ;
 int pr_cont (char*,...) ;

__attribute__((used)) static void bttv_print_irqbits(u32 print, u32 mark)
{
 unsigned int i;

 pr_cont("bits:");
 for (i = 0; i < ARRAY_SIZE(irq_name); i++) {
  if (print & (1 << i))
   pr_cont(" %s", irq_name[i]);
  if (mark & (1 << i))
   pr_cont("*");
 }
}
