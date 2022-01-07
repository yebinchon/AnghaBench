
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlist {int reg; int val; } ;
struct cx88_core {int dummy; } ;
 int cx_write (int,int ) ;
 int cx_writeb (int,int ) ;

__attribute__((used)) static void set_audio_registers(struct cx88_core *core, const struct rlist *l)
{
 int i;

 for (i = 0; l[i].reg; i++) {
  switch (l[i].reg) {
  case 131:
  case 132:
  case 133:
  case 128:
  case 129:
  case 130:
   cx_writeb(l[i].reg, l[i].val);
   break;
  default:
   cx_write(l[i].reg, l[i].val);
   break;
  }
 }
}
