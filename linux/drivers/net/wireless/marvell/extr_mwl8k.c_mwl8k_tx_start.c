
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {scalar_t__ regs; } ;


 int MWL8K_H2A_INT_DUMMY ;
 int MWL8K_H2A_INT_PPA_READY ;
 scalar_t__ MWL8K_HIU_H2A_INTERRUPT_EVENTS ;
 scalar_t__ MWL8K_HIU_INT_CODE ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void mwl8k_tx_start(struct mwl8k_priv *priv)
{
 iowrite32(MWL8K_H2A_INT_PPA_READY,
  priv->regs + MWL8K_HIU_H2A_INTERRUPT_EVENTS);
 iowrite32(MWL8K_H2A_INT_DUMMY,
  priv->regs + MWL8K_HIU_H2A_INTERRUPT_EVENTS);
 ioread32(priv->regs + MWL8K_HIU_INT_CODE);
}
