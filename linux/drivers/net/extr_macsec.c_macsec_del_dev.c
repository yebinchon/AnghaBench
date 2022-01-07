
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct macsec_tx_sa {int dummy; } ;
struct macsec_rx_sc {int next; } ;
struct TYPE_3__ {scalar_t__* sa; } ;
struct TYPE_4__ {TYPE_1__ tx_sc; scalar_t__ rx_sc; } ;
struct macsec_dev {TYPE_2__ secy; } ;


 int MACSEC_NUM_AN ;
 int RCU_INIT_POINTER (scalar_t__,int *) ;
 int clear_tx_sa (struct macsec_tx_sa*) ;
 int free_rx_sc (struct macsec_rx_sc*) ;
 int rcu_assign_pointer (scalar_t__,int ) ;
 void* rtnl_dereference (scalar_t__) ;

__attribute__((used)) static void macsec_del_dev(struct macsec_dev *macsec)
{
 int i;

 while (macsec->secy.rx_sc) {
  struct macsec_rx_sc *rx_sc = rtnl_dereference(macsec->secy.rx_sc);

  rcu_assign_pointer(macsec->secy.rx_sc, rx_sc->next);
  free_rx_sc(rx_sc);
 }

 for (i = 0; i < MACSEC_NUM_AN; i++) {
  struct macsec_tx_sa *sa = rtnl_dereference(macsec->secy.tx_sc.sa[i]);

  if (sa) {
   RCU_INIT_POINTER(macsec->secy.tx_sc.sa[i], ((void*)0));
   clear_tx_sa(sa);
  }
 }
}
