
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int ip_addr; int netdev; } ;
struct in_ifaddr {int ifa_address; } ;
struct in_device {int ifa_list; } ;


 int ENOENT ;
 struct in_device* __in_dev_get_rcu (int ) ;
 int memcpy (int ,int *,int) ;
 struct in_ifaddr* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline int velocity_get_ip(struct velocity_info *vptr)
{
 struct in_device *in_dev;
 struct in_ifaddr *ifa;
 int res = -ENOENT;

 rcu_read_lock();
 in_dev = __in_dev_get_rcu(vptr->netdev);
 if (in_dev != ((void*)0)) {
  ifa = rcu_dereference(in_dev->ifa_list);
  if (ifa != ((void*)0)) {
   memcpy(vptr->ip_addr, &ifa->ifa_address, 4);
   res = 0;
  }
 }
 rcu_read_unlock();
 return res;
}
