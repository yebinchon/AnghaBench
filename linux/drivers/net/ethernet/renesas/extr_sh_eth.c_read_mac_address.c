
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int* dev_addr; } ;


 int ETH_ALEN ;
 int MAHR ;
 int MALR ;
 int memcpy (int*,unsigned char*,int ) ;
 int sh_eth_read (struct net_device*,int ) ;

__attribute__((used)) static void read_mac_address(struct net_device *ndev, unsigned char *mac)
{
 if (mac[0] || mac[1] || mac[2] || mac[3] || mac[4] || mac[5]) {
  memcpy(ndev->dev_addr, mac, ETH_ALEN);
 } else {
  u32 mahr = sh_eth_read(ndev, MAHR);
  u32 malr = sh_eth_read(ndev, MALR);

  ndev->dev_addr[0] = (mahr >> 24) & 0xFF;
  ndev->dev_addr[1] = (mahr >> 16) & 0xFF;
  ndev->dev_addr[2] = (mahr >> 8) & 0xFF;
  ndev->dev_addr[3] = (mahr >> 0) & 0xFF;
  ndev->dev_addr[4] = (malr >> 8) & 0xFF;
  ndev->dev_addr[5] = (malr >> 0) & 0xFF;
 }
}
