
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct be_adapter {TYPE_1__* netdev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int jhash (int ,int ,int ) ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static void be_vf_eth_addr_generate(struct be_adapter *adapter, u8 *mac)
{
 u32 addr;

 addr = jhash(adapter->netdev->dev_addr, ETH_ALEN, 0);

 mac[5] = (u8)(addr & 0xFF);
 mac[4] = (u8)((addr >> 8) & 0xFF);
 mac[3] = (u8)((addr >> 16) & 0xFF);

 memcpy(mac, adapter->netdev->dev_addr, 3);
}
