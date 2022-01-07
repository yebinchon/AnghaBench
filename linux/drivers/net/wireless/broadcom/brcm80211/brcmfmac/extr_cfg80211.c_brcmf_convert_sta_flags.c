
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nl80211_sta_flag_update {int mask; int set; } ;
struct station_info {struct nl80211_sta_flag_update sta_flags; int filled; } ;


 int BIT (int ) ;
 int BIT_ULL (int ) ;
 int BRCMF_STA_ASSOC ;
 int BRCMF_STA_AUTHE ;
 int BRCMF_STA_AUTHO ;
 int BRCMF_STA_WME ;
 int NL80211_STA_FLAG_ASSOCIATED ;
 int NL80211_STA_FLAG_AUTHENTICATED ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int NL80211_STA_FLAG_WME ;
 int NL80211_STA_INFO_STA_FLAGS ;
 int TRACE ;
 int brcmf_dbg (int ,char*,int) ;

__attribute__((used)) static void brcmf_convert_sta_flags(u32 fw_sta_flags, struct station_info *si)
{
 struct nl80211_sta_flag_update *sfu;

 brcmf_dbg(TRACE, "flags %08x\n", fw_sta_flags);
 si->filled |= BIT_ULL(NL80211_STA_INFO_STA_FLAGS);
 sfu = &si->sta_flags;
 sfu->mask = BIT(NL80211_STA_FLAG_WME) |
      BIT(NL80211_STA_FLAG_AUTHENTICATED) |
      BIT(NL80211_STA_FLAG_ASSOCIATED) |
      BIT(NL80211_STA_FLAG_AUTHORIZED);
 if (fw_sta_flags & BRCMF_STA_WME)
  sfu->set |= BIT(NL80211_STA_FLAG_WME);
 if (fw_sta_flags & BRCMF_STA_AUTHE)
  sfu->set |= BIT(NL80211_STA_FLAG_AUTHENTICATED);
 if (fw_sta_flags & BRCMF_STA_ASSOC)
  sfu->set |= BIT(NL80211_STA_FLAG_ASSOCIATED);
 if (fw_sta_flags & BRCMF_STA_AUTHO)
  sfu->set |= BIT(NL80211_STA_FLAG_AUTHORIZED);
}
