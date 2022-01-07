
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_htc_rxbuf {int list; } ;
struct TYPE_2__ {int rxbuf; int rxbuflock; } ;
struct ath9k_htc_priv {TYPE_1__ rx; } ;


 int ATH9K_HTC_RXBUF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ath9k_rx_cleanup (struct ath9k_htc_priv*) ;
 struct ath9k_htc_rxbuf* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

int ath9k_rx_init(struct ath9k_htc_priv *priv)
{
 int i = 0;

 INIT_LIST_HEAD(&priv->rx.rxbuf);
 spin_lock_init(&priv->rx.rxbuflock);

 for (i = 0; i < ATH9K_HTC_RXBUF; i++) {
  struct ath9k_htc_rxbuf *rxbuf =
   kzalloc(sizeof(struct ath9k_htc_rxbuf), GFP_KERNEL);
  if (rxbuf == ((void*)0))
   goto err;

  list_add_tail(&rxbuf->list, &priv->rx.rxbuf);
 }

 return 0;

err:
 ath9k_rx_cleanup(priv);
 return -ENOMEM;
}
