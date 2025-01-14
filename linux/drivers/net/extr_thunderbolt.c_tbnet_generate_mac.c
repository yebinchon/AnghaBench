
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tbnet {struct tb_xdomain* xd; } ;
struct tb_xdomain {scalar_t__ local_uuid; int route; } ;
struct net_device {int* dev_addr; } ;
typedef int hash ;


 int TBNET_L0_PORT_NUM (int ) ;
 int jhash2 (int*,int,int) ;
 int memcpy (int*,int*,int) ;
 struct tbnet* netdev_priv (struct net_device*) ;
 int tb_phy_port_from_link (int ) ;

__attribute__((used)) static void tbnet_generate_mac(struct net_device *dev)
{
 const struct tbnet *net = netdev_priv(dev);
 const struct tb_xdomain *xd = net->xd;
 u8 phy_port;
 u32 hash;

 phy_port = tb_phy_port_from_link(TBNET_L0_PORT_NUM(xd->route));


 dev->dev_addr[0] = phy_port << 4 | 0x02;
 hash = jhash2((u32 *)xd->local_uuid, 4, 0);
 memcpy(dev->dev_addr + 1, &hash, sizeof(hash));
 hash = jhash2((u32 *)xd->local_uuid, 4, hash);
 dev->dev_addr[5] = hash & 0xff;
}
