
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct bnxt {int dummy; } ;


 int EADDRNOTAVAIL ;
 int bnxt_approve_mac (struct bnxt*,int ,int) ;
 int bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_open_nic (struct bnxt*,int,int) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnxt_change_mac_addr(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct bnxt *bp = netdev_priv(dev);
 int rc = 0;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (ether_addr_equal(addr->sa_data, dev->dev_addr))
  return 0;

 rc = bnxt_approve_mac(bp, addr->sa_data, 1);
 if (rc)
  return rc;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 if (netif_running(dev)) {
  bnxt_close_nic(bp, 0, 0);
  rc = bnxt_open_nic(bp, 0, 0);
 }

 return rc;
}
