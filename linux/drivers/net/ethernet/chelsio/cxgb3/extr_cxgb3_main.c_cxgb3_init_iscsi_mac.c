
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* mac_addr; } ;
struct port_info {TYPE_1__ iscsic; } ;
struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int memcpy (int*,int ,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cxgb3_init_iscsi_mac(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);

 memcpy(pi->iscsic.mac_addr, dev->dev_addr, ETH_ALEN);
 pi->iscsic.mac_addr[3] |= 0x80;
}
