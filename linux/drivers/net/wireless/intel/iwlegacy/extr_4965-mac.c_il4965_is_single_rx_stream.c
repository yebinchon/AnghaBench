
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ smps; scalar_t__ single_chain_sufficient; } ;
struct il_priv {TYPE_1__ current_ht_config; } ;


 scalar_t__ IEEE80211_SMPS_STATIC ;

__attribute__((used)) static bool
il4965_is_single_rx_stream(struct il_priv *il)
{
 return il->current_ht_config.smps == IEEE80211_SMPS_STATIC ||
     il->current_ht_config.single_chain_sufficient;
}
