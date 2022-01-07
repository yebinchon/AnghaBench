
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1000_priv {scalar_t__ reg_base; struct f81601_pci_card* priv; } ;
struct f81601_pci_card {int lock; } ;


 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void f81601_pci_write_reg(const struct sja1000_priv *priv, int port,
     u8 val)
{
 struct f81601_pci_card *card = priv->priv;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
 writeb(val, priv->reg_base + port);
 readb(priv->reg_base);
 spin_unlock_irqrestore(&card->lock, flags);
}
