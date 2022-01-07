
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_bss_conf {int aid; int bssid; } ;
struct ar5523_cmd_set_associd {int bssid; void* timoffset; void* associd; void* defaultrateix; } ;
struct ar5523 {int dummy; } ;
typedef int associd ;


 int ETH_ALEN ;
 int WDCMSG_WRITE_ASSOCID ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_cmd_set_associd*,int,int ) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ar5523_cmd_set_associd*,int ,int) ;

__attribute__((used)) static int ar5523_write_associd(struct ar5523 *ar,
    struct ieee80211_bss_conf *bss)
{
 struct ar5523_cmd_set_associd associd;

 memset(&associd, 0, sizeof(associd));
 associd.defaultrateix = cpu_to_be32(0);
 associd.associd = cpu_to_be32(bss->aid);
 associd.timoffset = cpu_to_be32(0x3b);
 memcpy(associd.bssid, bss->bssid, ETH_ALEN);
 return ar5523_cmd_write(ar, WDCMSG_WRITE_ASSOCID, &associd,
    sizeof(associd), 0);
}
