
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i40e_netdev_priv {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int flow_block_cb_setup_simple (void*,int *,int ,struct i40e_netdev_priv*,struct i40e_netdev_priv*,int) ;
 int i40e_block_cb_list ;
 int i40e_setup_tc (struct net_device*,void*) ;
 int i40e_setup_tc_block_cb ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int __i40e_setup_tc(struct net_device *netdev, enum tc_setup_type type,
      void *type_data)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);

 switch (type) {
 case 128:
  return i40e_setup_tc(netdev, type_data);
 case 129:
  return flow_block_cb_setup_simple(type_data,
        &i40e_block_cb_list,
        i40e_setup_tc_block_cb,
        np, np, 1);
 default:
  return -EOPNOTSUPP;
 }
}
