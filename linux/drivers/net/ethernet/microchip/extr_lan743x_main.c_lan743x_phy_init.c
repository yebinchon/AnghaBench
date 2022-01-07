
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int dummy; } ;


 int lan743x_phy_reset (struct lan743x_adapter*) ;

__attribute__((used)) static int lan743x_phy_init(struct lan743x_adapter *adapter)
{
 return lan743x_phy_reset(adapter);
}
