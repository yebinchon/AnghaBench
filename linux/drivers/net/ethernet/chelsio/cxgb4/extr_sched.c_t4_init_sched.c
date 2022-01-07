
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_table {unsigned int sched_size; TYPE_1__* tab; } ;
struct sched_class {int dummy; } ;
struct TYPE_2__ {unsigned int idx; int refcnt; int queue_list; int state; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SCHED_STATE_UNUSED ;
 int atomic_set (int *,int ) ;
 struct sched_table* kvzalloc (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int struct_size (struct sched_table*,int ,unsigned int) ;
 int tab ;

struct sched_table *t4_init_sched(unsigned int sched_size)
{
 struct sched_table *s;
 unsigned int i;

 s = kvzalloc(struct_size(s, tab, sched_size), GFP_KERNEL);
 if (!s)
  return ((void*)0);

 s->sched_size = sched_size;

 for (i = 0; i < s->sched_size; i++) {
  memset(&s->tab[i], 0, sizeof(struct sched_class));
  s->tab[i].idx = i;
  s->tab[i].state = SCHED_STATE_UNUSED;
  INIT_LIST_HEAD(&s->tab[i].queue_list);
  atomic_set(&s->tab[i].refcnt, 0);
 }
 return s;
}
