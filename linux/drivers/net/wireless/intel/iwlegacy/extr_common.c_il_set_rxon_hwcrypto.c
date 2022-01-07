
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_rxon_cmd {int filter_flags; } ;
struct il_priv {struct il_rxon_cmd staging; } ;


 int RXON_FILTER_DIS_DECRYPT_MSK ;

void
il_set_rxon_hwcrypto(struct il_priv *il, int hw_decrypt)
{
 struct il_rxon_cmd *rxon = &il->staging;

 if (hw_decrypt)
  rxon->filter_flags &= ~RXON_FILTER_DIS_DECRYPT_MSK;
 else
  rxon->filter_flags |= RXON_FILTER_DIS_DECRYPT_MSK;

}
