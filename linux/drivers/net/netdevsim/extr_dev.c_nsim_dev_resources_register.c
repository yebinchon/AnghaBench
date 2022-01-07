
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct net {int dummy; } ;
struct devlink_resource_size_params {int size_granularity; int unit; scalar_t__ size_max; } ;
struct devlink {int dummy; } ;


 int DEVLINK_RESOURCE_ID_PARENT_TOP ;
 int DEVLINK_RESOURCE_UNIT_ENTRY ;
 int NSIM_RESOURCE_IPV4 ;
 int NSIM_RESOURCE_IPV4_FIB ;
 int NSIM_RESOURCE_IPV4_FIB_RULES ;
 int NSIM_RESOURCE_IPV6 ;
 int NSIM_RESOURCE_IPV6_FIB ;
 int NSIM_RESOURCE_IPV6_FIB_RULES ;
 int devlink_resource_occ_get_register (struct devlink*,int ,int ,struct net*) ;
 int devlink_resource_register (struct devlink*,char*,scalar_t__,int ,int ,struct devlink_resource_size_params*) ;
 int nsim_dev_ipv4_fib_resource_occ_get ;
 int nsim_dev_ipv4_fib_rules_res_occ_get ;
 int nsim_dev_ipv6_fib_resource_occ_get ;
 int nsim_dev_ipv6_fib_rules_res_occ_get ;
 struct net* nsim_devlink_net (struct devlink*) ;
 scalar_t__ nsim_fib_get_val (struct net*,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int nsim_dev_resources_register(struct devlink *devlink)
{
 struct devlink_resource_size_params params = {
  .size_max = (u64)-1,
  .size_granularity = 1,
  .unit = DEVLINK_RESOURCE_UNIT_ENTRY
 };
 struct net *net = nsim_devlink_net(devlink);
 int err;
 u64 n;


 err = devlink_resource_register(devlink, "IPv4", (u64)-1,
     NSIM_RESOURCE_IPV4,
     DEVLINK_RESOURCE_ID_PARENT_TOP,
     &params);
 if (err) {
  pr_err("Failed to register IPv4 top resource\n");
  goto out;
 }

 n = nsim_fib_get_val(net, NSIM_RESOURCE_IPV4_FIB, 1);
 err = devlink_resource_register(devlink, "fib", n,
     NSIM_RESOURCE_IPV4_FIB,
     NSIM_RESOURCE_IPV4, &params);
 if (err) {
  pr_err("Failed to register IPv4 FIB resource\n");
  return err;
 }

 n = nsim_fib_get_val(net, NSIM_RESOURCE_IPV4_FIB_RULES, 1);
 err = devlink_resource_register(devlink, "fib-rules", n,
     NSIM_RESOURCE_IPV4_FIB_RULES,
     NSIM_RESOURCE_IPV4, &params);
 if (err) {
  pr_err("Failed to register IPv4 FIB rules resource\n");
  return err;
 }


 err = devlink_resource_register(devlink, "IPv6", (u64)-1,
     NSIM_RESOURCE_IPV6,
     DEVLINK_RESOURCE_ID_PARENT_TOP,
     &params);
 if (err) {
  pr_err("Failed to register IPv6 top resource\n");
  goto out;
 }

 n = nsim_fib_get_val(net, NSIM_RESOURCE_IPV6_FIB, 1);
 err = devlink_resource_register(devlink, "fib", n,
     NSIM_RESOURCE_IPV6_FIB,
     NSIM_RESOURCE_IPV6, &params);
 if (err) {
  pr_err("Failed to register IPv6 FIB resource\n");
  return err;
 }

 n = nsim_fib_get_val(net, NSIM_RESOURCE_IPV6_FIB_RULES, 1);
 err = devlink_resource_register(devlink, "fib-rules", n,
     NSIM_RESOURCE_IPV6_FIB_RULES,
     NSIM_RESOURCE_IPV6, &params);
 if (err) {
  pr_err("Failed to register IPv6 FIB rules resource\n");
  return err;
 }

 devlink_resource_occ_get_register(devlink,
       NSIM_RESOURCE_IPV4_FIB,
       nsim_dev_ipv4_fib_resource_occ_get,
       net);
 devlink_resource_occ_get_register(devlink,
       NSIM_RESOURCE_IPV4_FIB_RULES,
       nsim_dev_ipv4_fib_rules_res_occ_get,
       net);
 devlink_resource_occ_get_register(devlink,
       NSIM_RESOURCE_IPV6_FIB,
       nsim_dev_ipv6_fib_resource_occ_get,
       net);
 devlink_resource_occ_get_register(devlink,
       NSIM_RESOURCE_IPV6_FIB_RULES,
       nsim_dev_ipv6_fib_rules_res_occ_get,
       net);
out:
 return err;
}
