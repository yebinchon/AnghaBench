
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int sched_tbl; } ;
struct net_device {int dummy; } ;


 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static inline bool can_sched(struct net_device *dev)
{
 struct port_info *pi = netdev2pinfo(dev);

 return !pi->sched_tbl ? 0 : 1;
}
