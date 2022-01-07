
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int (* read_reg ) (struct sja1000_priv const*,int ) ;int (* write_reg ) (struct sja1000_priv const*,int ,int ) ;} ;


 int CDR_PELICAN ;
 int REG_CR ;
 int REG_CR_BASICCAN_INITIAL ;
 int REG_CR_BASICCAN_INITIAL_MASK ;
 int REG_IR_BASICCAN_INITIAL ;
 int REG_IR_PELICAN_INITIAL ;
 int REG_MOD_PELICAN_INITIAL ;
 int REG_SR_BASICCAN_INITIAL ;
 int REG_SR_PELICAN_INITIAL ;
 int SJA1000_CDR ;
 int SJA1000_IR ;
 int SJA1000_MOD ;
 int SJA1000_SR ;
 int stub1 (struct sja1000_priv const*,int ) ;
 int stub2 (struct sja1000_priv const*,int ) ;
 int stub3 (struct sja1000_priv const*,int ) ;
 int stub4 (struct sja1000_priv const*,int ,int ) ;
 int stub5 (struct sja1000_priv const*,int ) ;
 int stub6 (struct sja1000_priv const*,int ) ;
 int stub7 (struct sja1000_priv const*,int ) ;

__attribute__((used)) static inline int plx_pci_check_sja1000(const struct sja1000_priv *priv)
{
 int flag = 0;





 if ((priv->read_reg(priv, REG_CR) & REG_CR_BASICCAN_INITIAL_MASK) ==
     REG_CR_BASICCAN_INITIAL &&
     (priv->read_reg(priv, SJA1000_SR) == REG_SR_BASICCAN_INITIAL) &&
     (priv->read_reg(priv, SJA1000_IR) == REG_IR_BASICCAN_INITIAL))
  flag = 1;


 priv->write_reg(priv, SJA1000_CDR, CDR_PELICAN);





 if (priv->read_reg(priv, SJA1000_MOD) == REG_MOD_PELICAN_INITIAL &&
     priv->read_reg(priv, SJA1000_SR) == REG_SR_PELICAN_INITIAL &&
     priv->read_reg(priv, SJA1000_IR) == REG_IR_PELICAN_INITIAL)
  return flag;

 return 0;
}
