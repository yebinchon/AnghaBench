
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int dummy; } ;


 int CDR_PELICAN ;
 int SJA1000_CDR ;
 int SJA1000_MOD ;
 int pcan_read_canreg (struct sja1000_priv*,int ) ;
 int pcan_write_canreg (struct sja1000_priv*,int ,int) ;

__attribute__((used)) static inline int pcan_channel_present(struct sja1000_priv *priv)
{

 pcan_write_canreg(priv, SJA1000_MOD, 1);
 pcan_write_canreg(priv, SJA1000_CDR, CDR_PELICAN);


 if (pcan_read_canreg(priv, SJA1000_CDR) == CDR_PELICAN)
  return 1;

 return 0;
}
