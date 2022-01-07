
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_rx_sc {int refcnt; } ;


 scalar_t__ refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct macsec_rx_sc *macsec_rxsc_get(struct macsec_rx_sc *sc)
{
 return refcount_inc_not_zero(&sc->refcnt) ? sc : ((void*)0);
}
