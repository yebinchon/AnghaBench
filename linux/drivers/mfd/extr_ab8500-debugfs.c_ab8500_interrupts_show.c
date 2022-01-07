
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct irqaction {int name; struct irqaction* next; } ;
struct irq_desc {struct irqaction* action; int name; } ;


 scalar_t__ irq_first ;
 struct irq_desc* irq_to_desc (scalar_t__) ;
 int num_interrupt_lines ;
 int * num_interrupts ;
 int * num_wake_interrupts ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int ab8500_interrupts_show(struct seq_file *s, void *p)
{
 int line;

 seq_puts(s, "name: number:  number of: wake:\n");

 for (line = 0; line < num_interrupt_lines; line++) {
  struct irq_desc *desc = irq_to_desc(line + irq_first);

  seq_printf(s, "%3i:  %6i %4i",
      line,
      num_interrupts[line],
      num_wake_interrupts[line]);

  if (desc && desc->name)
   seq_printf(s, "-%-8s", desc->name);
  if (desc && desc->action) {
   struct irqaction *action = desc->action;

   seq_printf(s, "  %s", action->name);
   while ((action = action->next) != ((void*)0))
    seq_printf(s, ", %s", action->name);
  }
  seq_putc(s, '\n');
 }

 return 0;
}
