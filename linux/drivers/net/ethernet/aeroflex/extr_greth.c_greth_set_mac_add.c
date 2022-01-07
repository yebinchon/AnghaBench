
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int* dev_addr; int addr_len; } ;
struct greth_regs {int esa_lsb; int esa_msb; } ;
struct greth_private {struct greth_regs* regs; } ;


 int EADDRNOTAVAIL ;
 int GRETH_REGSAVE (int ,int) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int*,int ,int ) ;
 struct greth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int greth_set_mac_add(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct greth_private *greth;
 struct greth_regs *regs;

 greth = netdev_priv(dev);
 regs = greth->regs;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 GRETH_REGSAVE(regs->esa_msb, dev->dev_addr[0] << 8 | dev->dev_addr[1]);
 GRETH_REGSAVE(regs->esa_lsb, dev->dev_addr[2] << 24 | dev->dev_addr[3] << 16 |
        dev->dev_addr[4] << 8 | dev->dev_addr[5]);

 return 0;
}
