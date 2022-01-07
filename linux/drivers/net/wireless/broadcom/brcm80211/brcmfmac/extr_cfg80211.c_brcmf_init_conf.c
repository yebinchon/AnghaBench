
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct brcmf_cfg80211_conf {void* retry_long; void* retry_short; void* rts_threshold; void* frag_threshold; } ;



__attribute__((used)) static void brcmf_init_conf(struct brcmf_cfg80211_conf *conf)
{
 conf->frag_threshold = (u32)-1;
 conf->rts_threshold = (u32)-1;
 conf->retry_short = (u32)-1;
 conf->retry_long = (u32)-1;
}
