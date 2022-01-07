
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct port_info {int dummy; } ;
struct net_device {int dummy; } ;
struct ch_sched_queue {int class; } ;
typedef enum sched_bind_type { ____Placeholder_sched_bind_type } sched_bind_type ;


 int EINVAL ;
 int ENOTSUPP ;

 int can_sched (struct net_device*) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int t4_sched_class_bind_unbind_op (struct port_info*,void*,int,int) ;
 int valid_class_id (struct net_device*,int ) ;

int cxgb4_sched_class_unbind(struct net_device *dev, void *arg,
        enum sched_bind_type type)
{
 struct port_info *pi = netdev2pinfo(dev);
 u8 class_id;

 if (!can_sched(dev))
  return -ENOTSUPP;

 if (!arg)
  return -EINVAL;

 switch (type) {
 case 128: {
  struct ch_sched_queue *qe = (struct ch_sched_queue *)arg;

  class_id = qe->class;
  break;
 }
 default:
  return -ENOTSUPP;
 }

 if (!valid_class_id(dev, class_id))
  return -EINVAL;

 return t4_sched_class_bind_unbind_op(pi, arg, type, 0);
}
