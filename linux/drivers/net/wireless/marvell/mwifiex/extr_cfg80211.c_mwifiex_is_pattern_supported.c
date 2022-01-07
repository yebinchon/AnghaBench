
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_pkt_pattern {int* mask; int pkt_offset; int * pattern; int pattern_len; } ;
typedef int s8 ;


 int DIV_ROUND_UP (int ,int) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static bool
mwifiex_is_pattern_supported(struct cfg80211_pkt_pattern *pat, s8 *byte_seq,
        u8 max_byte_seq)
{
 int j, k, valid_byte_cnt = 0;
 bool dont_care_byte = 0;

 for (j = 0; j < DIV_ROUND_UP(pat->pattern_len, 8); j++) {
  for (k = 0; k < 8; k++) {
   if (pat->mask[j] & 1 << k) {
    memcpy(byte_seq + valid_byte_cnt,
           &pat->pattern[j * 8 + k], 1);
    valid_byte_cnt++;
    if (dont_care_byte)
     return 0;
   } else {
    if (valid_byte_cnt)
     dont_care_byte = 1;
   }




   if (!valid_byte_cnt && !dont_care_byte)
    pat->pkt_offset++;

   if (valid_byte_cnt > max_byte_seq)
    return 0;
  }
 }

 byte_seq[max_byte_seq] = valid_byte_cnt;

 return 1;
}
