
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {int dummy; } ;


 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;

__attribute__((used)) static void ath9k_htc_op_ps_restore(struct ath_common *common)
{
 ath9k_htc_ps_restore((struct ath9k_htc_priv *) common->priv);
}
