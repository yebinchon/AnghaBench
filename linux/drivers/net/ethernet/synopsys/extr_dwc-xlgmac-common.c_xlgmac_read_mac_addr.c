
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int mac_addr; struct net_device* netdev; } ;
struct net_device {int addr_len; } ;


 int dev_addr ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void xlgmac_read_mac_addr(struct xlgmac_pdata *pdata)
{
 struct net_device *netdev = pdata->netdev;


 memcpy(pdata->mac_addr, dev_addr, netdev->addr_len);
}
