
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_bus_dev {int list; } ;
struct bus_type {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned int INT_MAX ;
 scalar_t__ IS_ERR (struct nsim_bus_dev*) ;
 size_t PTR_ERR (struct nsim_bus_dev*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nsim_bus_dev_list ;
 int nsim_bus_dev_list_lock ;
 struct nsim_bus_dev* nsim_bus_dev_new (unsigned int,unsigned int) ;
 int pr_err (char*) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static ssize_t
new_device_store(struct bus_type *bus, const char *buf, size_t count)
{
 struct nsim_bus_dev *nsim_bus_dev;
 unsigned int port_count;
 unsigned int id;
 int err;

 err = sscanf(buf, "%u %u", &id, &port_count);
 switch (err) {
 case 1:
  port_count = 1;

 case 2:
  if (id > INT_MAX) {
   pr_err("Value of \"id\" is too big.\n");
   return -EINVAL;
  }
  break;
 default:
  pr_err("Format for adding new device is \"id port_count\" (uint uint).\n");
  return -EINVAL;
 }
 nsim_bus_dev = nsim_bus_dev_new(id, port_count);
 if (IS_ERR(nsim_bus_dev))
  return PTR_ERR(nsim_bus_dev);

 mutex_lock(&nsim_bus_dev_list_lock);
 list_add_tail(&nsim_bus_dev->list, &nsim_bus_dev_list);
 mutex_unlock(&nsim_bus_dev_list_lock);

 return count;
}
