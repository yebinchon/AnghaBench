
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int mdiobus; } ;


 int mdiobus_unregister (int ) ;

__attribute__((used)) static void lan743x_mdiobus_cleanup(struct lan743x_adapter *adapter)
{
 mdiobus_unregister(adapter->mdiobus);
}
