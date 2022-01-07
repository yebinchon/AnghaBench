
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {TYPE_1__* cd; } ;
struct TYPE_2__ {int dual_port; } ;


 int TSU_BSYSL0 ;
 int TSU_BSYSL1 ;
 int TSU_FCM ;
 int TSU_FWEN0 ;
 int TSU_FWEN1 ;
 int TSU_FWINMK ;
 int TSU_FWSL0 ;
 int TSU_FWSL1 ;
 int TSU_FWSLC ;
 int TSU_FWSLC_POSTENL ;
 int TSU_FWSLC_POSTENU ;
 int TSU_FWSR ;
 int TSU_POST1 ;
 int TSU_POST2 ;
 int TSU_POST3 ;
 int TSU_POST4 ;
 int TSU_PRISL0 ;
 int TSU_PRISL1 ;
 int TSU_QTAGM0 ;
 int TSU_QTAGM1 ;
 int TSU_TEN ;
 int sh_eth_tsu_write (struct sh_eth_private*,int,int ) ;

__attribute__((used)) static void sh_eth_tsu_init(struct sh_eth_private *mdp)
{
 if (!mdp->cd->dual_port) {
  sh_eth_tsu_write(mdp, 0, TSU_TEN);
  sh_eth_tsu_write(mdp, TSU_FWSLC_POSTENU | TSU_FWSLC_POSTENL,
     TSU_FWSLC);
  return;
 }

 sh_eth_tsu_write(mdp, 0, TSU_FWEN0);
 sh_eth_tsu_write(mdp, 0, TSU_FWEN1);
 sh_eth_tsu_write(mdp, 0, TSU_FCM);
 sh_eth_tsu_write(mdp, 0xc, TSU_BSYSL0);
 sh_eth_tsu_write(mdp, 0xc, TSU_BSYSL1);
 sh_eth_tsu_write(mdp, 0, TSU_PRISL0);
 sh_eth_tsu_write(mdp, 0, TSU_PRISL1);
 sh_eth_tsu_write(mdp, 0, TSU_FWSL0);
 sh_eth_tsu_write(mdp, 0, TSU_FWSL1);
 sh_eth_tsu_write(mdp, TSU_FWSLC_POSTENU | TSU_FWSLC_POSTENL, TSU_FWSLC);
 sh_eth_tsu_write(mdp, 0, TSU_QTAGM0);
 sh_eth_tsu_write(mdp, 0, TSU_QTAGM1);
 sh_eth_tsu_write(mdp, 0, TSU_FWSR);
 sh_eth_tsu_write(mdp, 0, TSU_FWINMK);
 sh_eth_tsu_write(mdp, 0, TSU_TEN);
 sh_eth_tsu_write(mdp, 0, TSU_POST1);
 sh_eth_tsu_write(mdp, 0, TSU_POST2);
 sh_eth_tsu_write(mdp, 0, TSU_POST3);
 sh_eth_tsu_write(mdp, 0, TSU_POST4);
}
