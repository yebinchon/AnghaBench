
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int dummy; } ;


 int ixgbevf_configure (struct ixgbevf_adapter*) ;
 int ixgbevf_up_complete (struct ixgbevf_adapter*) ;

void ixgbevf_up(struct ixgbevf_adapter *adapter)
{
 ixgbevf_configure(adapter);

 ixgbevf_up_complete(adapter);
}
