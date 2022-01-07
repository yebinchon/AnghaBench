
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;


 int mwifiex_clean_txrx (struct mwifiex_private*) ;
 int mwifiex_delete_bss_prio_tbl (struct mwifiex_private*) ;
 int mwifiex_free_curr_bcn (struct mwifiex_private*) ;

void mwifiex_free_priv(struct mwifiex_private *priv)
{
 mwifiex_clean_txrx(priv);
 mwifiex_delete_bss_prio_tbl(priv);
 mwifiex_free_curr_bcn(priv);
}
