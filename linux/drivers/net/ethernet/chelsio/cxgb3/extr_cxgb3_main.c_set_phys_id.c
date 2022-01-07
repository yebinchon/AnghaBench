
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int A_T3DBG_GPIO_EN ;




 int F_GPIO0_OUT_VAL ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;

__attribute__((used)) static int set_phys_id(struct net_device *dev,
         enum ethtool_phys_id_state state)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 switch (state) {
 case 131:
  return 1;

 case 129:
  t3_set_reg_field(adapter, A_T3DBG_GPIO_EN, F_GPIO0_OUT_VAL, 0);
  break;

 case 128:
 case 130:
  t3_set_reg_field(adapter, A_T3DBG_GPIO_EN, F_GPIO0_OUT_VAL,
    F_GPIO0_OUT_VAL);
 }

 return 0;
}
