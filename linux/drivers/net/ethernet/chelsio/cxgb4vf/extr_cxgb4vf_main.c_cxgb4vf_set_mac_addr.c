
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct port_info {int xact_addr_filt; int viid; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int cxgb4vf_change_mac (struct port_info*,int ,int *,int ,int) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cxgb4vf_set_mac_addr(struct net_device *dev, void *_addr)
{
 int ret;
 struct sockaddr *addr = _addr;
 struct port_info *pi = netdev_priv(dev);

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 ret = cxgb4vf_change_mac(pi, pi->viid, &pi->xact_addr_filt,
     addr->sa_data, 1);
 if (ret < 0)
  return ret;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 return 0;
}
