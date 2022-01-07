
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_rx_sc {int rcu_head; int refcnt; } ;


 int call_rcu (int *,int ) ;
 int free_rx_sc_rcu ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void macsec_rxsc_put(struct macsec_rx_sc *sc)
{
 if (refcount_dec_and_test(&sc->refcnt))
  call_rcu(&sc->rcu_head, free_rx_sc_rcu);
}
