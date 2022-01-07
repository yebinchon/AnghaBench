
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1000_priv {int cmdreg_lock; int (* read_reg ) (struct sja1000_priv*,int ) ;int (* write_reg ) (struct sja1000_priv*,int ,int ) ;} ;


 int SJA1000_CMR ;
 int SJA1000_SR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sja1000_priv*,int ,int ) ;
 int stub2 (struct sja1000_priv*,int ) ;

__attribute__((used)) static void sja1000_write_cmdreg(struct sja1000_priv *priv, u8 val)
{
 unsigned long flags;





 spin_lock_irqsave(&priv->cmdreg_lock, flags);
 priv->write_reg(priv, SJA1000_CMR, val);
 priv->read_reg(priv, SJA1000_SR);
 spin_unlock_irqrestore(&priv->cmdreg_lock, flags);
}
