
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_scan_request {int n_channels; TYPE_1__** channels; } ;
struct TYPE_2__ {scalar_t__ hw_value; } ;


 scalar_t__ P2P_DMG_SOCIAL_CHANNEL ;

bool wil_p2p_is_social_scan(struct cfg80211_scan_request *request)
{
 return (request->n_channels == 1) &&
        (request->channels[0]->hw_value == P2P_DMG_SOCIAL_CHANNEL);
}
