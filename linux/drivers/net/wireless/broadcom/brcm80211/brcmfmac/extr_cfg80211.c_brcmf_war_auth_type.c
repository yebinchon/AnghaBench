
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_if {int dummy; } ;
typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;


 int BRCMF_FEAT_QUIRK_AUTO_AUTH ;
 int CONN ;
 int NL80211_AUTHTYPE_AUTOMATIC ;
 int NL80211_AUTHTYPE_OPEN_SYSTEM ;
 int brcmf_dbg (int ,char*) ;
 scalar_t__ brcmf_feat_is_quirk_enabled (struct brcmf_if*,int ) ;

__attribute__((used)) static
enum nl80211_auth_type brcmf_war_auth_type(struct brcmf_if *ifp,
        enum nl80211_auth_type type)
{
 if (type == NL80211_AUTHTYPE_AUTOMATIC &&
     brcmf_feat_is_quirk_enabled(ifp, BRCMF_FEAT_QUIRK_AUTO_AUTH)) {
  brcmf_dbg(CONN, "WAR: use OPEN instead of AUTO\n");
  type = NL80211_AUTHTYPE_OPEN_SYSTEM;
 }
 return type;
}
