
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct w5300_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;


 int W5300_REGS_LEN ;


 struct w5300_priv* netdev_priv (struct net_device*) ;
 int w5300_read (struct w5300_priv*,int) ;

__attribute__((used)) static void w5300_get_regs(struct net_device *ndev,
      struct ethtool_regs *regs, void *_buf)
{
 struct w5300_priv *priv = netdev_priv(ndev);
 u8 *buf = _buf;
 u16 addr;
 u16 data;

 regs->version = 1;
 for (addr = 0; addr < W5300_REGS_LEN; addr += 2) {
  switch (addr & 0x23f) {
  case 128:
  case 129:
   data = 0xffff;
   break;
  default:
   data = w5300_read(priv, addr);
   break;
  }
  *buf++ = data >> 8;
  *buf++ = data;
 }
}
