
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_interrupt_lines ;
 int * num_interrupts ;

void ab8500_debug_register_interrupt(int line)
{
 if (line < num_interrupt_lines)
  num_interrupts[line]++;
}
