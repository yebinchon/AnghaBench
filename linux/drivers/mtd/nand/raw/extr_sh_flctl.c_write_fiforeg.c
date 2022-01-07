
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int * done_buff; } ;


 int FLDTFIFO (struct sh_flctl*) ;
 int cpu_to_be32 (unsigned long) ;
 int wait_wfifo_ready (struct sh_flctl*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void write_fiforeg(struct sh_flctl *flctl, int rlen,
      unsigned int offset)
{
 int i, len_4align;
 unsigned long *buf = (unsigned long *)&flctl->done_buff[offset];

 len_4align = (rlen + 3) / 4;
 for (i = 0; i < len_4align; i++) {
  wait_wfifo_ready(flctl);
  writel(cpu_to_be32(buf[i]), FLDTFIFO(flctl));
 }
}
