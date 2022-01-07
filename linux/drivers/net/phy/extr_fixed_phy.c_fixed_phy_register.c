
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct fixed_phy_status {int dummy; } ;
struct device_node {int dummy; } ;


 struct phy_device* __fixed_phy_register (unsigned int,struct fixed_phy_status*,struct device_node*,int *) ;

struct phy_device *fixed_phy_register(unsigned int irq,
          struct fixed_phy_status *status,
          struct device_node *np)
{
 return __fixed_phy_register(irq, status, np, ((void*)0));
}
