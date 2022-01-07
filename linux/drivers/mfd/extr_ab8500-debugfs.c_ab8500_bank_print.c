
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int debug_bank ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ab8500_bank_print(struct seq_file *s, void *p)
{
 seq_printf(s, "0x%02X\n", debug_bank);
 return 0;
}
