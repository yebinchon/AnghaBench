
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {scalar_t__ nextmsduhandle; int async_tx_pending; int tx_skb; int hw; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ MAC_TRANSACTION_OVERFLOW ;
 int dev_err (int *,char*,scalar_t__,...) ;
 int ieee802154_wake_queue (int ) ;
 int ieee802154_xmit_complete (int ,int ,int) ;

__attribute__((used)) static int ca8210_async_xmit_complete(
 struct ieee802154_hw *hw,
 u8 msduhandle,
 u8 status)
{
 struct ca8210_priv *priv = hw->priv;

 if (priv->nextmsduhandle != msduhandle) {
  dev_err(
   &priv->spi->dev,
   "Unexpected msdu_handle on data confirm, Expected %d, got %d\n",
   priv->nextmsduhandle,
   msduhandle
  );
  return -EIO;
 }

 priv->async_tx_pending = 0;
 priv->nextmsduhandle++;

 if (status) {
  dev_err(
   &priv->spi->dev,
   "Link transmission unsuccessful, status = %d\n",
   status
  );
  if (status != MAC_TRANSACTION_OVERFLOW) {
   ieee802154_wake_queue(priv->hw);
   return 0;
  }
 }
 ieee802154_xmit_complete(priv->hw, priv->tx_skb, 1);

 return 0;
}
