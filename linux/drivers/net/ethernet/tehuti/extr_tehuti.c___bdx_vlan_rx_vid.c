
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct bdx_priv {int dummy; } ;


 int DBG2 (char*,int,...) ;
 int ENTER ;
 int READ_REG (struct bdx_priv*,int) ;
 int RET () ;
 int WRITE_REG (struct bdx_priv*,int,int) ;
 struct bdx_priv* netdev_priv (struct net_device*) ;
 int pr_err (char*,int) ;
 int regVLAN_0 ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __bdx_vlan_rx_vid(struct net_device *ndev, uint16_t vid, int enable)
{
 struct bdx_priv *priv = netdev_priv(ndev);
 u32 reg, bit, val;

 ENTER;
 DBG2("vid=%d value=%d\n", (int)vid, enable);
 if (unlikely(vid >= 4096)) {
  pr_err("invalid VID: %u (> 4096)\n", vid);
  RET();
 }
 reg = regVLAN_0 + (vid / 32) * 4;
 bit = 1 << vid % 32;
 val = READ_REG(priv, reg);
 DBG2("reg=%x, val=%x, bit=%d\n", reg, val, bit);
 if (enable)
  val |= bit;
 else
  val &= ~bit;
 DBG2("new val %x\n", val);
 WRITE_REG(priv, reg, val);
 RET();
}
