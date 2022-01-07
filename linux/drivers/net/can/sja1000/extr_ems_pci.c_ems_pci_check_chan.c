
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {unsigned char (* read_reg ) (struct sja1000_priv const*,int ) ;int (* write_reg ) (struct sja1000_priv const*,int ,unsigned char) ;} ;


 unsigned char CDR_PELICAN ;
 int SJA1000_CDR ;
 int SJA1000_MOD ;
 int stub1 (struct sja1000_priv const*,int ,int) ;
 int stub2 (struct sja1000_priv const*,int ,unsigned char) ;
 unsigned char stub3 (struct sja1000_priv const*,int ) ;

__attribute__((used)) static inline int ems_pci_check_chan(const struct sja1000_priv *priv)
{
 unsigned char res;


 priv->write_reg(priv, SJA1000_MOD, 1);

 priv->write_reg(priv, SJA1000_CDR, CDR_PELICAN);


 res = priv->read_reg(priv, SJA1000_CDR);

 if (res == CDR_PELICAN)
  return 1;

 return 0;
}
