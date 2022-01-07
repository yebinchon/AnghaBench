
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void bdisp_dbg_dump_sz(struct seq_file *s, u32 val, char *name)
{
 seq_printf(s, "%s\t0x%08X\t", name, val);
 seq_printf(s, "%dx%d\n", val & 0x1FFF, (val >> 16) & 0x1FFF);
}
