
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ar9170 {TYPE_3__* hw; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_8__ {TYPE_2__ chandef; } ;
struct TYPE_7__ {TYPE_4__ conf; } ;
struct TYPE_5__ {scalar_t__ band; } ;


 int AR9170_MAC_REG_DYNAMIC_SIFS_ACK ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int carl9170_write_reg (struct ar9170*,int ,int) ;
 scalar_t__ conf_is_ht40 (TYPE_4__*) ;

int carl9170_set_dyn_sifs_ack(struct ar9170 *ar)
{
 u32 val;

 if (conf_is_ht40(&ar->hw->conf))
  val = 0x010a;
 else {
  if (ar->hw->conf.chandef.chan->band == NL80211_BAND_2GHZ)
   val = 0x105;
  else
   val = 0x104;
 }

 return carl9170_write_reg(ar, AR9170_MAC_REG_DYNAMIC_SIFS_ACK, val);
}
