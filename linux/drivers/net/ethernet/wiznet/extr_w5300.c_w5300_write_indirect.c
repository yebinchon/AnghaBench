
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w5300_priv {int reg_lock; } ;


 int W5300_IDM_AR ;
 int W5300_IDM_DR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int w5300_write_direct (struct w5300_priv*,int ,int ) ;

__attribute__((used)) static void w5300_write_indirect(struct w5300_priv *priv, u16 addr, u16 data)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->reg_lock, flags);
 w5300_write_direct(priv, W5300_IDM_AR, addr);
 w5300_write_direct(priv, W5300_IDM_DR, data);
 spin_unlock_irqrestore(&priv->reg_lock, flags);
}
