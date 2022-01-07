
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct w5100_mmio_priv {int reg_lock; } ;
struct net_device {int dummy; } ;


 int W5100_IDM_AR ;
 int W5100_IDM_DR ;
 int __w5100_write_direct (struct net_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct w5100_mmio_priv* w5100_mmio_priv (struct net_device*) ;
 int w5100_write16_direct (struct net_device*,int ,int ) ;

__attribute__((used)) static int w5100_writebulk_indirect(struct net_device *ndev, u32 addr,
        const u8 *buf, int len)
{
 struct w5100_mmio_priv *mmio_priv = w5100_mmio_priv(ndev);
 unsigned long flags;
 int i;

 spin_lock_irqsave(&mmio_priv->reg_lock, flags);
 w5100_write16_direct(ndev, W5100_IDM_AR, addr);

 for (i = 0; i < len; i++)
  __w5100_write_direct(ndev, W5100_IDM_DR, *buf++);

 spin_unlock_irqrestore(&mmio_priv->reg_lock, flags);

 return 0;
}
