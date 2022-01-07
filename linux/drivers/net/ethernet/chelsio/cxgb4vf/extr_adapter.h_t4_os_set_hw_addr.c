
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adapter {TYPE_1__** port; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static inline void t4_os_set_hw_addr(struct adapter *adapter, int pidx,
         u8 hw_addr[])
{
 memcpy(adapter->port[pidx]->dev_addr, hw_addr, ETH_ALEN);
}
