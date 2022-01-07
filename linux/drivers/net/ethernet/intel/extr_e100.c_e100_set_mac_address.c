
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct nic {int dummy; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int e100_exec_cb (struct nic*,int *,int ) ;
 int e100_setup_iaaddr ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_set_mac_address(struct net_device *netdev, void *p)
{
 struct nic *nic = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 e100_exec_cb(nic, ((void*)0), e100_setup_iaaddr);

 return 0;
}
