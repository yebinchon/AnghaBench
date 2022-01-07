
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int* dev_addr; } ;


 int IS_ERR (int const*) ;
 int MAHR ;
 int MALR ;
 int ether_addr_copy (int*,int const*) ;
 int ravb_read (struct net_device*,int ) ;

__attribute__((used)) static void ravb_read_mac_address(struct net_device *ndev, const u8 *mac)
{
 if (!IS_ERR(mac)) {
  ether_addr_copy(ndev->dev_addr, mac);
 } else {
  u32 mahr = ravb_read(ndev, MAHR);
  u32 malr = ravb_read(ndev, MALR);

  ndev->dev_addr[0] = (mahr >> 24) & 0xFF;
  ndev->dev_addr[1] = (mahr >> 16) & 0xFF;
  ndev->dev_addr[2] = (mahr >> 8) & 0xFF;
  ndev->dev_addr[3] = (mahr >> 0) & 0xFF;
  ndev->dev_addr[4] = (malr >> 8) & 0xFF;
  ndev->dev_addr[5] = (malr >> 0) & 0xFF;
 }
}
