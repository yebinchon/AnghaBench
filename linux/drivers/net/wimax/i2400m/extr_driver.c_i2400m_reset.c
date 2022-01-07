
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {int (* bus_reset ) (struct i2400m*,int) ;TYPE_1__ wimax_dev; } ;
typedef enum i2400m_reset_type { ____Placeholder_i2400m_reset_type } i2400m_reset_type ;


 scalar_t__ NETREG_REGISTERED ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int stub1 (struct i2400m*,int) ;

int i2400m_reset(struct i2400m *i2400m, enum i2400m_reset_type rt)
{
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;






 if (net_dev->reg_state == NETREG_REGISTERED) {
  netif_tx_disable(net_dev);
  netif_carrier_off(net_dev);
 }
 return i2400m->bus_reset(i2400m, rt);
}
