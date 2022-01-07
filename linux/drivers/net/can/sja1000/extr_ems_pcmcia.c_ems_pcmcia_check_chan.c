
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int dummy; } ;


 int CDR_PELICAN ;
 int SJA1000_CDR ;
 int SJA1000_MOD ;
 int ems_pcmcia_read_reg (struct sja1000_priv*,int ) ;
 int ems_pcmcia_write_reg (struct sja1000_priv*,int ,int) ;

__attribute__((used)) static inline int ems_pcmcia_check_chan(struct sja1000_priv *priv)
{

 ems_pcmcia_write_reg(priv, SJA1000_MOD, 1);
 ems_pcmcia_write_reg(priv, SJA1000_CDR, CDR_PELICAN);


 if (ems_pcmcia_read_reg(priv, SJA1000_CDR) == CDR_PELICAN)
  return 1;

 return 0;
}
