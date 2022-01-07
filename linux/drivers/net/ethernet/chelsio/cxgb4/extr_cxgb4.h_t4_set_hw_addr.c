
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adapter {TYPE_1__** port; } ;
struct TYPE_2__ {int perm_addr; int dev_addr; } ;


 int ether_addr_copy (int ,int *) ;

__attribute__((used)) static inline void t4_set_hw_addr(struct adapter *adapter, int port_idx,
      u8 hw_addr[])
{
 ether_addr_copy(adapter->port[port_idx]->dev_addr, hw_addr);
 ether_addr_copy(adapter->port[port_idx]->perm_addr, hw_addr);
}
