
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int * curr_bcn_buf; } ;


 int kfree (int *) ;

void
mwifiex_free_curr_bcn(struct mwifiex_private *priv)
{
 kfree(priv->curr_bcn_buf);
 priv->curr_bcn_buf = ((void*)0);
}
