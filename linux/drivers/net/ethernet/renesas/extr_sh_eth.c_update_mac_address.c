
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int* dev_addr; } ;


 int MAHR ;
 int MALR ;
 int sh_eth_write (struct net_device*,int,int ) ;

__attribute__((used)) static void update_mac_address(struct net_device *ndev)
{
 sh_eth_write(ndev,
       (ndev->dev_addr[0] << 24) | (ndev->dev_addr[1] << 16) |
       (ndev->dev_addr[2] << 8) | (ndev->dev_addr[3]), MAHR);
 sh_eth_write(ndev,
       (ndev->dev_addr[4] << 8) | (ndev->dev_addr[5]), MALR);
}
