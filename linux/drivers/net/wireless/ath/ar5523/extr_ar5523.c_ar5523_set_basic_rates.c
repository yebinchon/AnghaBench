
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_bss_conf {int dummy; } ;
struct ar5523_cmd_rateset {int dummy; } ;
struct ar5523_cmd_rates {int rateset; void* size; void* connid; } ;
struct ar5523 {int dummy; } ;
typedef int rates ;


 int WDCMSG_SET_BASIC_RATE ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_cmd_rates*,int,int ) ;
 int ar5523_create_rateset (struct ar5523*,struct ieee80211_bss_conf*,int *,int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct ar5523_cmd_rates*,int ,int) ;

__attribute__((used)) static int ar5523_set_basic_rates(struct ar5523 *ar,
      struct ieee80211_bss_conf *bss)
{
 struct ar5523_cmd_rates rates;

 memset(&rates, 0, sizeof(rates));
 rates.connid = cpu_to_be32(2);
 rates.size = cpu_to_be32(sizeof(struct ar5523_cmd_rateset));
 ar5523_create_rateset(ar, bss, &rates.rateset, 1);

 return ar5523_cmd_write(ar, WDCMSG_SET_BASIC_RATE, &rates,
    sizeof(rates), 0);
}
