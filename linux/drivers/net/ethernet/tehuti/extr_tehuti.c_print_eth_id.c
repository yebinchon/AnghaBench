
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ if_port; } ;


 int BDX_NIC_NAME ;
 int netdev_info (struct net_device*,char*,int ,char) ;

__attribute__((used)) static void print_eth_id(struct net_device *ndev)
{
 netdev_info(ndev, "%s, Port %c\n",
      BDX_NIC_NAME, (ndev->if_port == 0) ? 'A' : 'B');

}
