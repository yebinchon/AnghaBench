
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcmf_if {int ndev; } ;
struct brcmf_event_msg {int flags; int addr; } ;
typedef int s32 ;
typedef enum nl80211_key_type { ____Placeholder_nl80211_key_type } nl80211_key_type ;


 int BRCMF_EVENT_MSG_GROUP ;
 int GFP_KERNEL ;
 int NL80211_KEYTYPE_GROUP ;
 int NL80211_KEYTYPE_PAIRWISE ;
 int cfg80211_michael_mic_failure (int ,int *,int,int,int *,int ) ;

__attribute__((used)) static s32
brcmf_notify_mic_status(struct brcmf_if *ifp,
   const struct brcmf_event_msg *e, void *data)
{
 u16 flags = e->flags;
 enum nl80211_key_type key_type;

 if (flags & BRCMF_EVENT_MSG_GROUP)
  key_type = NL80211_KEYTYPE_GROUP;
 else
  key_type = NL80211_KEYTYPE_PAIRWISE;

 cfg80211_michael_mic_failure(ifp->ndev, (u8 *)&e->addr, key_type, -1,
         ((void*)0), GFP_KERNEL);

 return 0;
}
