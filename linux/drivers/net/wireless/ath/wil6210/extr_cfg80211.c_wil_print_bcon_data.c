
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_beacon_data {int assocresp_ies_len; int assocresp_ies; int proberesp_ies_len; int proberesp_ies; int probe_resp_len; int probe_resp; int beacon_ies_len; int beacon_ies; int tail_len; int tail; int head_len; int head; } ;


 int DUMP_PREFIX_OFFSET ;
 int wil_hex_dump_misc (char*,int ,int,int,int ,int ,int) ;

__attribute__((used)) static void wil_print_bcon_data(struct cfg80211_beacon_data *b)
{
 wil_hex_dump_misc("head     ", DUMP_PREFIX_OFFSET, 16, 1,
     b->head, b->head_len, 1);
 wil_hex_dump_misc("tail     ", DUMP_PREFIX_OFFSET, 16, 1,
     b->tail, b->tail_len, 1);
 wil_hex_dump_misc("BCON IE  ", DUMP_PREFIX_OFFSET, 16, 1,
     b->beacon_ies, b->beacon_ies_len, 1);
 wil_hex_dump_misc("PROBE    ", DUMP_PREFIX_OFFSET, 16, 1,
     b->probe_resp, b->probe_resp_len, 1);
 wil_hex_dump_misc("PROBE IE ", DUMP_PREFIX_OFFSET, 16, 1,
     b->proberesp_ies, b->proberesp_ies_len, 1);
 wil_hex_dump_misc("ASSOC IE ", DUMP_PREFIX_OFFSET, 16, 1,
     b->assocresp_ies, b->assocresp_ies_len, 1);
}
