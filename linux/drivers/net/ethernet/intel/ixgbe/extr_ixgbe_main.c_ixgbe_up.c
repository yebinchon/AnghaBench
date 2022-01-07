
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int dummy; } ;


 int ixgbe_configure (struct ixgbe_adapter*) ;
 int ixgbe_up_complete (struct ixgbe_adapter*) ;

void ixgbe_up(struct ixgbe_adapter *adapter)
{

 ixgbe_configure(adapter);

 ixgbe_up_complete(adapter);
}
