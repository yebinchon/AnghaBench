
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tp ;
struct sched_table {size_t sched_size; struct sched_class* tab; } ;
struct TYPE_5__ {void* class; } ;
struct TYPE_4__ {TYPE_2__ params; } ;
struct ch_sched_params {scalar_t__ type; TYPE_1__ u; } ;
struct sched_class {scalar_t__ state; struct ch_sched_params const info; } ;
struct port_info {struct sched_table* sched_tbl; } ;
typedef int info ;


 void* SCHED_CLS_NONE ;
 scalar_t__ SCHED_STATE_UNUSED ;
 int memcmp (TYPE_2__*,TYPE_2__*,int) ;
 int memcpy (struct ch_sched_params*,struct ch_sched_params const*,int) ;

__attribute__((used)) static struct sched_class *t4_sched_class_lookup(struct port_info *pi,
      const struct ch_sched_params *p)
{
 struct sched_table *s = pi->sched_tbl;
 struct sched_class *e, *end;
 struct sched_class *found = ((void*)0);

 if (!p) {

  end = &s->tab[s->sched_size];
  for (e = &s->tab[0]; e != end; ++e) {
   if (e->state == SCHED_STATE_UNUSED) {
    found = e;
    break;
   }
  }
 } else {

  struct ch_sched_params info;
  struct ch_sched_params tp;

  memcpy(&tp, p, sizeof(tp));

  tp.u.params.class = SCHED_CLS_NONE;

  end = &s->tab[s->sched_size];
  for (e = &s->tab[0]; e != end; ++e) {
   if (e->state == SCHED_STATE_UNUSED)
    continue;

   memcpy(&info, &e->info, sizeof(info));

   info.u.params.class = SCHED_CLS_NONE;

   if ((info.type == tp.type) &&
       (!memcmp(&info.u.params, &tp.u.params,
         sizeof(info.u.params)))) {
    found = e;
    break;
   }
  }
 }

 return found;
}
