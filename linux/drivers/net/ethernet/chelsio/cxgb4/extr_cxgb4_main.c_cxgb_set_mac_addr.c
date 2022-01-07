
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct port_info {int xact_addr_filt; int smt_idx; int viid; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int cxgb4_update_mac_filt (struct port_info*,int ,int*,int ,int,int *) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cxgb_set_mac_addr(struct net_device *dev, void *p)
{
 int ret;
 struct sockaddr *addr = p;
 struct port_info *pi = netdev_priv(dev);

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 ret = cxgb4_update_mac_filt(pi, pi->viid, &pi->xact_addr_filt,
        addr->sa_data, 1, &pi->smt_idx);
 if (ret < 0)
  return ret;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 pi->xact_addr_filt = ret;
 return 0;
}
