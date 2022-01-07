
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nic {int netdev; int mdio_lock; TYPE_1__* csr; } ;
struct TYPE_2__ {int mdi_ctrl; } ;


 int KERN_DEBUG ;
 int hw ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int mdi_read ;
 int mdi_ready ;
 int netdev_err (int ,char*) ;
 int netif_printk (struct nic*,int ,int ,int ,char*,char*,int,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 mdio_ctrl_hw(struct nic *nic, u32 addr, u32 dir, u32 reg, u16 data)
{
 u32 data_out = 0;
 unsigned int i;
 unsigned long flags;
 spin_lock_irqsave(&nic->mdio_lock, flags);
 for (i = 100; i; --i) {
  if (ioread32(&nic->csr->mdi_ctrl) & mdi_ready)
   break;
  udelay(20);
 }
 if (unlikely(!i)) {
  netdev_err(nic->netdev, "e100.mdio_ctrl won't go Ready\n");
  spin_unlock_irqrestore(&nic->mdio_lock, flags);
  return 0;
 }
 iowrite32((reg << 16) | (addr << 21) | dir | data, &nic->csr->mdi_ctrl);

 for (i = 0; i < 100; i++) {
  udelay(20);
  if ((data_out = ioread32(&nic->csr->mdi_ctrl)) & mdi_ready)
   break;
 }
 spin_unlock_irqrestore(&nic->mdio_lock, flags);
 netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
       "%s:addr=%d, reg=%d, data_in=0x%04X, data_out=0x%04X\n",
       dir == mdi_read ? "READ" : "WRITE",
       addr, reg, data, data_out);
 return (u16)data_out;
}
