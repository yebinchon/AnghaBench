
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdevsim {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int flow_block_cb_setup_simple (void*,int *,int ,struct netdevsim*,struct netdevsim*,int) ;
 struct netdevsim* netdev_priv (struct net_device*) ;
 int nsim_block_cb_list ;
 int nsim_setup_tc_block_cb ;

__attribute__((used)) static int
nsim_setup_tc(struct net_device *dev, enum tc_setup_type type, void *type_data)
{
 struct netdevsim *ns = netdev_priv(dev);

 switch (type) {
 case 128:
  return flow_block_cb_setup_simple(type_data,
        &nsim_block_cb_list,
        nsim_setup_tc_block_cb,
        ns, ns, 1);
 default:
  return -EOPNOTSUPP;
 }
}
