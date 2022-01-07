
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {int spi; } ;


 int HWME_EDVALUE ;
 int hwme_get_request_sync (int ,int *,int *,int ) ;
 int link_to_linux_err (int ) ;

__attribute__((used)) static int ca8210_get_ed(struct ieee802154_hw *hw, u8 *level)
{
 u8 lenvar;
 struct ca8210_priv *priv = hw->priv;

 return link_to_linux_err(
  hwme_get_request_sync(HWME_EDVALUE, &lenvar, level, priv->spi)
 );
}
