
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int lock; } ;


 int DOC_DEVICESELECT ;
 int doc_register_readb (struct docg3*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int device_id_show(struct seq_file *s, void *p)
{
 struct docg3 *docg3 = (struct docg3 *)s->private;
 int id;

 mutex_lock(&docg3->cascade->lock);
 id = doc_register_readb(docg3, DOC_DEVICESELECT);
 mutex_unlock(&docg3->cascade->lock);

 seq_printf(s, "DeviceId = %d\n", id);
 return 0;
}
