
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ class; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct ch_sched_params {TYPE_2__ u; } ;
struct sched_class {scalar_t__ idx; int state; int refcnt; struct ch_sched_params info; } ;
struct port_info {int dummy; } ;
typedef int np ;


 scalar_t__ SCHED_CLS_NONE ;
 int SCHED_FW_OP_ADD ;
 int SCHED_STATE_ACTIVE ;
 int atomic_set (int *,int ) ;
 int memcpy (struct ch_sched_params*,struct ch_sched_params*,int) ;
 int t4_sched_class_fw_cmd (struct port_info*,struct ch_sched_params*,int ) ;
 struct sched_class* t4_sched_class_lookup (struct port_info*,struct ch_sched_params*) ;

__attribute__((used)) static struct sched_class *t4_sched_class_alloc(struct port_info *pi,
      struct ch_sched_params *p)
{
 struct sched_class *e;
 u8 class_id;
 int err;

 if (!p)
  return ((void*)0);

 class_id = p->u.params.class;




 if (class_id != SCHED_CLS_NONE)
  return ((void*)0);




 e = t4_sched_class_lookup(pi, p);
 if (!e) {
  struct ch_sched_params np;


  e = t4_sched_class_lookup(pi, ((void*)0));
  if (!e)
   return ((void*)0);

  memcpy(&np, p, sizeof(np));
  np.u.params.class = e->idx;

  err = t4_sched_class_fw_cmd(pi, &np, SCHED_FW_OP_ADD);
  if (err)
   return ((void*)0);
  memcpy(&e->info, &np, sizeof(e->info));
  atomic_set(&e->refcnt, 0);
  e->state = SCHED_STATE_ACTIVE;
 }

 return e;
}
