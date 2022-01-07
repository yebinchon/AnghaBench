
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_amsdu; int rx_amsdu; int rx_win_size; int tx_win_size; int timeout; } ;
struct mwifiex_private {TYPE_1__ add_ba_param; } ;


 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;
 int MWIFIEX_DEFAULT_BLOCK_ACK_TIMEOUT ;
 int MWIFIEX_STA_AMPDU_DEF_RXWINSIZE ;
 int MWIFIEX_STA_AMPDU_DEF_TXWINSIZE ;
 int MWIFIEX_UAP_AMPDU_DEF_RXWINSIZE ;
 int MWIFIEX_UAP_AMPDU_DEF_TXWINSIZE ;

void mwifiex_set_ba_params(struct mwifiex_private *priv)
{
 priv->add_ba_param.timeout = MWIFIEX_DEFAULT_BLOCK_ACK_TIMEOUT;

 if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_UAP) {
  priv->add_ba_param.tx_win_size =
      MWIFIEX_UAP_AMPDU_DEF_TXWINSIZE;
  priv->add_ba_param.rx_win_size =
      MWIFIEX_UAP_AMPDU_DEF_RXWINSIZE;
 } else {
  priv->add_ba_param.tx_win_size =
      MWIFIEX_STA_AMPDU_DEF_TXWINSIZE;
  priv->add_ba_param.rx_win_size =
      MWIFIEX_STA_AMPDU_DEF_RXWINSIZE;
 }

 priv->add_ba_param.tx_amsdu = 1;
 priv->add_ba_param.rx_amsdu = 1;

 return;
}
