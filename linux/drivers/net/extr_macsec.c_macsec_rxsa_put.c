
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_rx_sa {int rcu; int refcnt; } ;


 int call_rcu (int *,int ) ;
 int free_rxsa ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void macsec_rxsa_put(struct macsec_rx_sa *sa)
{
 if (refcount_dec_and_test(&sa->refcnt))
  call_rcu(&sa->rcu, free_rxsa);
}
