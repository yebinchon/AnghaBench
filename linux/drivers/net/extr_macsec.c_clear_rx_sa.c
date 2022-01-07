
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_rx_sa {int active; } ;


 int macsec_rxsa_put (struct macsec_rx_sa*) ;

__attribute__((used)) static void clear_rx_sa(struct macsec_rx_sa *rx_sa)
{
 rx_sa->active = 0;

 macsec_rxsa_put(rx_sa);
}
