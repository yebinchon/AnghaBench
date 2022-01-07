
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m; } ;
struct TYPE_4__ {int m; } ;
struct bdx_priv {TYPE_1__ rxd_fifo0; TYPE_2__ rxf_fifo0; int * rxdb; } ;


 int ENTER ;
 int RET () ;
 int bdx_fifo_free (struct bdx_priv*,int *) ;
 int bdx_rx_free_skbs (struct bdx_priv*,TYPE_2__*) ;
 int bdx_rxdb_destroy (int *) ;

__attribute__((used)) static void bdx_rx_free(struct bdx_priv *priv)
{
 ENTER;
 if (priv->rxdb) {
  bdx_rx_free_skbs(priv, &priv->rxf_fifo0);
  bdx_rxdb_destroy(priv->rxdb);
  priv->rxdb = ((void*)0);
 }
 bdx_fifo_free(priv, &priv->rxf_fifo0.m);
 bdx_fifo_free(priv, &priv->rxd_fifo0.m);

 RET();
}
