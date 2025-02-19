
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct port_info {TYPE_1__* sched_tbl; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int sched_size; } ;


 int SCHED_CLS_NONE ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static inline bool valid_class_id(struct net_device *dev, u8 class_id)
{
 struct port_info *pi = netdev2pinfo(dev);

 if ((class_id > pi->sched_tbl->sched_size - 1) &&
     (class_id != SCHED_CLS_NONE))
  return 0;

 return 1;
}
