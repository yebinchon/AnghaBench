
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_rx_sc {int * sa; } ;
struct macsec_rx_sa {int dummy; } ;


 int MACSEC_NUM_AN ;
 int RCU_INIT_POINTER (int ,int *) ;
 int clear_rx_sa (struct macsec_rx_sa*) ;
 int macsec_rxsc_put (struct macsec_rx_sc*) ;
 struct macsec_rx_sa* rtnl_dereference (int ) ;

__attribute__((used)) static void free_rx_sc(struct macsec_rx_sc *rx_sc)
{
 int i;

 for (i = 0; i < MACSEC_NUM_AN; i++) {
  struct macsec_rx_sa *sa = rtnl_dereference(rx_sc->sa[i]);

  RCU_INIT_POINTER(rx_sc->sa[i], ((void*)0));
  if (sa)
   clear_rx_sa(sa);
 }

 macsec_rxsc_put(rx_sc);
}
