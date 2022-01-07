
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;


 int sstep_thread_id ;
 TYPE_1__ ts ;
 int v2printk (char*,int ) ;

__attribute__((used)) static int put_cont_catch(char *put_str, char *arg)
{

 v2printk("kgdbts: cleanup task: %lx\n", sstep_thread_id);
 ts.idx--;
 return 0;
}
