
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct be_adapter {int dev_mac; TYPE_1__* netdev; } ;
struct TYPE_2__ {int perm_addr; int dev_addr; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int ETH_ALEN ;
 int be_cmd_get_perm_mac (struct be_adapter*,int *) ;
 scalar_t__ be_virtfn (struct be_adapter*) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int be_mac_setup(struct be_adapter *adapter)
{
 u8 mac[ETH_ALEN];
 int status;

 if (is_zero_ether_addr(adapter->netdev->dev_addr)) {
  status = be_cmd_get_perm_mac(adapter, mac);
  if (status)
   return status;

  memcpy(adapter->netdev->dev_addr, mac, ETH_ALEN);
  memcpy(adapter->netdev->perm_addr, mac, ETH_ALEN);


  if (BEx_chip(adapter) && be_virtfn(adapter))
   memcpy(adapter->dev_mac, mac, ETH_ALEN);
 }

 return 0;
}
