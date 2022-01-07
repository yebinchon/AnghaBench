
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_profile {int dummy; } ;


 int memset (struct brcmf_cfg80211_profile*,int ,int) ;

__attribute__((used)) static void brcmf_init_prof(struct brcmf_cfg80211_profile *prof)
{
 memset(prof, 0, sizeof(*prof));
}
