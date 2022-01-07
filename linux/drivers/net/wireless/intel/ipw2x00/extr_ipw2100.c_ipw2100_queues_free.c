
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int dummy; } ;


 int ipw2100_msg_free (struct ipw2100_priv*) ;
 int ipw2100_rx_free (struct ipw2100_priv*) ;
 int ipw2100_tx_free (struct ipw2100_priv*) ;

__attribute__((used)) static void ipw2100_queues_free(struct ipw2100_priv *priv)
{
 ipw2100_tx_free(priv);
 ipw2100_rx_free(priv);
 ipw2100_msg_free(priv);
}
