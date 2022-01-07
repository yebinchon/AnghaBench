
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int op_flags; } ;
struct ath9k_htc_priv {int ah; } ;


 int ATH_OP_SCANNING ;
 int ath9k_htc_opmode_init (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_hw_rxena (int ) ;
 int ath9k_hw_startpcureceive (int ,int ) ;
 int test_bit (int ,int *) ;

void ath9k_host_rx_init(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 ath9k_hw_rxena(priv->ah);
 ath9k_htc_opmode_init(priv);
 ath9k_hw_startpcureceive(priv->ah, test_bit(ATH_OP_SCANNING, &common->op_flags));
}
