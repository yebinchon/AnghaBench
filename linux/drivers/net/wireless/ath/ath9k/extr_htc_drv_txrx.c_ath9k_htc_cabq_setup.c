
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_tx_queue_info {int dummy; } ;
struct ath9k_htc_priv {int ah; } ;
typedef int qi ;


 int ATH9K_HTC_INIT_TXQ (int ) ;
 int ATH9K_TX_QUEUE_CAB ;
 int ath9k_hw_setuptxqueue (int ,int ,struct ath9k_tx_queue_info*) ;
 int memset (struct ath9k_tx_queue_info*,int ,int) ;

int ath9k_htc_cabq_setup(struct ath9k_htc_priv *priv)
{
 struct ath9k_tx_queue_info qi;

 memset(&qi, 0, sizeof(qi));
 ATH9K_HTC_INIT_TXQ(0);

 return ath9k_hw_setuptxqueue(priv->ah, ATH9K_TX_QUEUE_CAB, &qi);
}
