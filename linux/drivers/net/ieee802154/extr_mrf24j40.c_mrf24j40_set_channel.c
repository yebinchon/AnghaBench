
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mrf24j40 {int regmap_short; int regmap_long; } ;
struct ieee802154_hw {struct mrf24j40* priv; } ;


 scalar_t__ BIT_RFRST ;
 scalar_t__ MRF24J40_CHAN_MAX ;
 scalar_t__ MRF24J40_CHAN_MIN ;
 int REG_RFCON0 ;
 int REG_RFCTL ;
 scalar_t__ RFCON0_CH_MASK ;
 scalar_t__ RFCON0_CH_SHIFT ;
 scalar_t__ RFOPT_RECOMMEND ;
 int SET_CHANNEL_DELAY_US ;
 int WARN_ON (int) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int printdev (struct mrf24j40*) ;
 int regmap_update_bits (int ,int ,scalar_t__,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static int mrf24j40_set_channel(struct ieee802154_hw *hw, u8 page, u8 channel)
{
 struct mrf24j40 *devrec = hw->priv;
 u8 val;
 int ret;

 dev_dbg(printdev(devrec), "Set Channel %d\n", channel);

 WARN_ON(page != 0);
 WARN_ON(channel < MRF24J40_CHAN_MIN);
 WARN_ON(channel > MRF24J40_CHAN_MAX);


 val = (channel - 11) << RFCON0_CH_SHIFT | RFOPT_RECOMMEND;
 ret = regmap_update_bits(devrec->regmap_long, REG_RFCON0,
     RFCON0_CH_MASK, val);
 if (ret)
  return ret;


 ret = regmap_update_bits(devrec->regmap_short, REG_RFCTL, BIT_RFRST,
     BIT_RFRST);
 if (ret)
  return ret;

 ret = regmap_update_bits(devrec->regmap_short, REG_RFCTL, BIT_RFRST, 0);
 if (!ret)
  udelay(SET_CHANNEL_DELAY_US);

 return ret;
}
