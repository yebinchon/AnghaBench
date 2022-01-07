
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int ssize_t ;


 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct net_device*,char*) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t attr_show(struct device *d, char *buf,
    ssize_t(*format) (struct net_device *, char *))
{
 ssize_t len;


 rtnl_lock();
 len = (*format) (to_net_dev(d), buf);
 rtnl_unlock();
 return len;
}
