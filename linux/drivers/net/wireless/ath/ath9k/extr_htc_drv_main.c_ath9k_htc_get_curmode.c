
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int dummy; } ;
struct ath9k_channel {int dummy; } ;
typedef enum htc_phymode { ____Placeholder_htc_phymode } htc_phymode ;


 int HTC_MODE_11NA ;
 int HTC_MODE_11NG ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;

__attribute__((used)) static enum htc_phymode ath9k_htc_get_curmode(struct ath9k_htc_priv *priv,
           struct ath9k_channel *ichan)
{
 if (IS_CHAN_5GHZ(ichan))
  return HTC_MODE_11NA;

 return HTC_MODE_11NG;
}
