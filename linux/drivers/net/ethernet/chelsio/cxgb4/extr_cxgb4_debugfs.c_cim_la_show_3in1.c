
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 void* SEQ_START_TOKEN ;
 int seq_printf (struct seq_file*,char*,int const,int const,int const,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int cim_la_show_3in1(struct seq_file *seq, void *v, int idx)
{
 if (v == SEQ_START_TOKEN) {
  seq_puts(seq, "Status   Data      PC\n");
 } else {
  const u32 *p = v;

  seq_printf(seq, "  %02x   %08x %08x\n", p[5] & 0xff, p[6],
      p[7]);
  seq_printf(seq, "  %02x   %02x%06x %02x%06x\n",
      (p[3] >> 8) & 0xff, p[3] & 0xff, p[4] >> 8,
      p[4] & 0xff, p[5] >> 8);
  seq_printf(seq, "  %02x   %x%07x %x%07x\n", (p[0] >> 4) & 0xff,
      p[0] & 0xf, p[1] >> 4, p[1] & 0xf, p[2] >> 4);
 }
 return 0;
}
