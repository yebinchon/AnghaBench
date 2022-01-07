
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int dummy; } ;
struct ch_sched_queue {int dummy; } ;
typedef enum sched_bind_type { ____Placeholder_sched_bind_type } sched_bind_type ;


 int EINVAL ;
 int ENOTSUPP ;

 int t4_sched_queue_bind (struct port_info*,struct ch_sched_queue*) ;
 int t4_sched_queue_unbind (struct port_info*,struct ch_sched_queue*) ;

__attribute__((used)) static int t4_sched_class_bind_unbind_op(struct port_info *pi, void *arg,
      enum sched_bind_type type, bool bind)
{
 int err = 0;

 if (!arg)
  return -EINVAL;

 switch (type) {
 case 128: {
  struct ch_sched_queue *qe = (struct ch_sched_queue *)arg;

  if (bind)
   err = t4_sched_queue_bind(pi, qe);
  else
   err = t4_sched_queue_unbind(pi, qe);
  break;
 }
 default:
  err = -ENOTSUPP;
  break;
 }

 return err;
}
