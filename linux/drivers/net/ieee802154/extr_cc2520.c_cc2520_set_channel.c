
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee802154_hw {struct cc2520_private* priv; } ;
struct cc2520_private {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int CC2520_FREQCTRL ;
 scalar_t__ CC2520_MAXCHANNEL ;
 scalar_t__ CC2520_MINCHANNEL ;
 int WARN_ON (int) ;
 int cc2520_write_register (struct cc2520_private*,int ,int) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int
cc2520_set_channel(struct ieee802154_hw *hw, u8 page, u8 channel)
{
 struct cc2520_private *priv = hw->priv;
 int ret;

 dev_dbg(&priv->spi->dev, "trying to set channel\n");

 WARN_ON(page != 0);
 WARN_ON(channel < CC2520_MINCHANNEL);
 WARN_ON(channel > CC2520_MAXCHANNEL);

 ret = cc2520_write_register(priv, CC2520_FREQCTRL,
        11 + 5 * (channel - 11));

 return ret;
}
