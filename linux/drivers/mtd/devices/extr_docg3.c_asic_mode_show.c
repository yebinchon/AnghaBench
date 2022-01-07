
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int lock; } ;


 int DOC_ASICMODE ;
 int DOC_ASICMODE_BDETCT_RESET ;
 int DOC_ASICMODE_MDWREN ;


 int DOC_ASICMODE_RAM_WE ;

 int DOC_ASICMODE_RSTIN_RESET ;
 int doc_register_readb (struct docg3*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int,int,int,int,int,int,int,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int asic_mode_show(struct seq_file *s, void *p)
{
 struct docg3 *docg3 = (struct docg3 *)s->private;

 int pctrl, mode;

 mutex_lock(&docg3->cascade->lock);
 pctrl = doc_register_readb(docg3, DOC_ASICMODE);
 mode = pctrl & 0x03;
 mutex_unlock(&docg3->cascade->lock);

 seq_printf(s,
     "%04x : RAM_WE=%d,RSTIN_RESET=%d,BDETCT_RESET=%d,WRITE_ENABLE=%d,POWERDOWN=%d,MODE=%d%d (",
     pctrl,
     pctrl & DOC_ASICMODE_RAM_WE ? 1 : 0,
     pctrl & DOC_ASICMODE_RSTIN_RESET ? 1 : 0,
     pctrl & DOC_ASICMODE_BDETCT_RESET ? 1 : 0,
     pctrl & DOC_ASICMODE_MDWREN ? 1 : 0,
     pctrl & 129 ? 1 : 0,
     mode >> 1, mode & 0x1);

 switch (mode) {
 case 128:
  seq_puts(s, "reset");
  break;
 case 130:
  seq_puts(s, "normal");
  break;
 case 129:
  seq_puts(s, "powerdown");
  break;
 }
 seq_puts(s, ")\n");
 return 0;
}
