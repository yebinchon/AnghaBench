
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_board_info {int emacrx_completed_flag; int lock; scalar_t__ membase; int dev; } ;
typedef int irqreturn_t ;


 scalar_t__ EMAC_INT_CTL_REG ;
 scalar_t__ EMAC_INT_STA_REG ;
 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int) ;
 int emac_rx (struct net_device*) ;
 int emac_tx_done (struct net_device*,struct emac_board_info*,int) ;
 int netdev_info (struct net_device*,char*,int) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_intr (struct emac_board_info*) ;
 void* readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t emac_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct emac_board_info *db = netdev_priv(dev);
 int int_status;
 unsigned long flags;
 unsigned int reg_val;




 spin_lock_irqsave(&db->lock, flags);


 writel(0, db->membase + EMAC_INT_CTL_REG);



 int_status = readl(db->membase + EMAC_INT_STA_REG);

 writel(int_status, db->membase + EMAC_INT_STA_REG);

 if (netif_msg_intr(db))
  dev_dbg(db->dev, "emac interrupt %02x\n", int_status);


 if ((int_status & 0x100) && (db->emacrx_completed_flag == 1)) {

  db->emacrx_completed_flag = 0;
  emac_rx(dev);
 }


 if (int_status & (0x01 | 0x02))
  emac_tx_done(dev, db, int_status);

 if (int_status & (0x04 | 0x08))
  netdev_info(dev, " ab : %x\n", int_status);


 if (db->emacrx_completed_flag == 1) {
  reg_val = readl(db->membase + EMAC_INT_CTL_REG);
  reg_val |= (0xf << 0) | (0x01 << 8);
  writel(reg_val, db->membase + EMAC_INT_CTL_REG);
 }
 spin_unlock_irqrestore(&db->lock, flags);

 return IRQ_HANDLED;
}
