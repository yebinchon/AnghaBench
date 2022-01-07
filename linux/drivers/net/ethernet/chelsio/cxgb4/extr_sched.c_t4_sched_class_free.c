
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_class {int dummy; } ;
struct port_info {int dummy; } ;


 int SCHED_QUEUE ;
 int t4_sched_class_unbind_all (struct port_info*,struct sched_class*,int ) ;

__attribute__((used)) static void t4_sched_class_free(struct port_info *pi, struct sched_class *e)
{
 t4_sched_class_unbind_all(pi, e, SCHED_QUEUE);
}
