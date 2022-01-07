
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 void* SEQ_START_TOKEN ;
 int seq_printf (struct seq_file*,char*,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int cim_la_show(struct seq_file *seq, void *v, int idx)
{
 if (v == SEQ_START_TOKEN)
  seq_puts(seq, "Status   Data      PC     LS0Stat  LS0Addr "
    "            LS0Data\n");
 else {
  const u32 *p = v;

  seq_printf(seq,
      "  %02x  %x%07x %x%07x %08x %08x %08x%08x%08x%08x\n",
      (p[0] >> 4) & 0xff, p[0] & 0xf, p[1] >> 4,
      p[1] & 0xf, p[2] >> 4, p[2] & 0xf, p[3], p[4], p[5],
      p[6], p[7]);
 }
 return 0;
}
