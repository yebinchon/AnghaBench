
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_tx_sa {int active; } ;


 int macsec_txsa_put (struct macsec_tx_sa*) ;

__attribute__((used)) static void clear_tx_sa(struct macsec_tx_sa *tx_sa)
{
 tx_sa->active = 0;

 macsec_txsa_put(tx_sa);
}
