
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {TYPE_1__* spi; } ;
typedef int s8 ;
struct TYPE_2__ {int dev; } ;


 int MAC_MAX_FRAME_RETRIES ;
 int dev_err (int *,char*,scalar_t__) ;
 int link_to_linux_err (scalar_t__) ;
 scalar_t__ mlme_set_request_sync (int ,int ,int,int *,TYPE_1__*) ;

__attribute__((used)) static int ca8210_set_frame_retries(struct ieee802154_hw *hw, s8 retries)
{
 u8 status;
 struct ca8210_priv *priv = hw->priv;

 status = mlme_set_request_sync(
  MAC_MAX_FRAME_RETRIES,
  0,
  1,
  &retries,
  priv->spi
 );
 if (status) {
  dev_err(
   &priv->spi->dev,
   "error setting frame retries, MLME-SET.confirm status = %d",
   status
  );
 }
 return link_to_linux_err(status);
}
