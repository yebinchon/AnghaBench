
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;


 int ath9k_ps_restore (struct ath_softc*) ;

__attribute__((used)) static void ath9k_op_ps_restore(struct ath_common *common)
{
 ath9k_ps_restore((struct ath_softc *) common->priv);
}
