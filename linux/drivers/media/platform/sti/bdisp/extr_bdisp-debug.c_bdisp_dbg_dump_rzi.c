
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static void bdisp_dbg_dump_rzi(struct seq_file *s, u32 val, char *name)
{
 seq_printf(s, "%s\t0x%08X\t", name, val);

 if (!val)
  goto done;

 seq_printf(s, "H: init=%d repeat=%d - ", val & 0x3FF, (val >> 12) & 7);
 val >>= 16;
 seq_printf(s, "V: init=%d repeat=%d", val & 0x3FF, (val >> 12) & 7);

done:
 seq_putc(s, '\n');
}
