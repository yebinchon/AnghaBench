
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int * rom_addr; int * addr; } ;


 int ether_addr_copy (int *,int *) ;
 int get_random_bytes (int *,int) ;
 scalar_t__ is_zero_ether_addr (int *) ;

__attribute__((used)) static void et131x_hwaddr_init(struct et131x_adapter *adapter)
{




 if (is_zero_ether_addr(adapter->rom_addr)) {




  get_random_bytes(&adapter->addr[5], 1);




  ether_addr_copy(adapter->rom_addr, adapter->addr);
 } else {




  ether_addr_copy(adapter->addr, adapter->rom_addr);
 }
}
