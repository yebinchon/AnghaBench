
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;
struct ethtool_regs {int version; } ;


 int JME_MAC ;
 int JME_MAC_LEN ;
 int JME_MISC ;
 int JME_MISC_LEN ;
 int JME_PHY ;
 int JME_PHY_LEN ;
 int JME_PHY_REG_NR ;
 int JME_REG_LEN ;
 int JME_RSS ;
 int JME_RSS_LEN ;
 int mdio_memcpy (struct jme_adapter*,int *,int ) ;
 int memset (void*,int,int ) ;
 int mmapio_memcpy (struct jme_adapter*,int *,int ,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
jme_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 u32 *p32 = (u32 *)p;

 memset(p, 0xFF, JME_REG_LEN);

 regs->version = 1;
 mmapio_memcpy(jme, p32, JME_MAC, JME_MAC_LEN);

 p32 += 0x100 >> 2;
 mmapio_memcpy(jme, p32, JME_PHY, JME_PHY_LEN);

 p32 += 0x100 >> 2;
 mmapio_memcpy(jme, p32, JME_MISC, JME_MISC_LEN);

 p32 += 0x100 >> 2;
 mmapio_memcpy(jme, p32, JME_RSS, JME_RSS_LEN);

 p32 += 0x100 >> 2;
 mdio_memcpy(jme, p32, JME_PHY_REG_NR);
}
