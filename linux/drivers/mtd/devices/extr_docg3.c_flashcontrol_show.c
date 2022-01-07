
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {scalar_t__ private; } ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int lock; } ;


 int DOC_CTRL_CE ;
 int DOC_CTRL_FLASHREADY ;
 int DOC_CTRL_PROTECTION_ERROR ;
 int DOC_CTRL_SEQUENCE_ERROR ;
 int DOC_CTRL_VIOLATION ;
 int DOC_FLASHCONTROL ;
 int doc_register_readb (struct docg3*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int,char*,char*,char*,char*,char*) ;

__attribute__((used)) static int flashcontrol_show(struct seq_file *s, void *p)
{
 struct docg3 *docg3 = (struct docg3 *)s->private;

 u8 fctrl;

 mutex_lock(&docg3->cascade->lock);
 fctrl = doc_register_readb(docg3, DOC_FLASHCONTROL);
 mutex_unlock(&docg3->cascade->lock);

 seq_printf(s, "FlashControl : 0x%02x (%s,CE# %s,%s,%s,flash %s)\n",
     fctrl,
     fctrl & DOC_CTRL_VIOLATION ? "protocol violation" : "-",
     fctrl & DOC_CTRL_CE ? "active" : "inactive",
     fctrl & DOC_CTRL_PROTECTION_ERROR ? "protection error" : "-",
     fctrl & DOC_CTRL_SEQUENCE_ERROR ? "sequence error" : "-",
     fctrl & DOC_CTRL_FLASHREADY ? "ready" : "not ready");

 return 0;
}
