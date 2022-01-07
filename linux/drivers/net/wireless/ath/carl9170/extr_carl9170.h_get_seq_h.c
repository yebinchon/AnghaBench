
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_hdr {int seq_ctrl; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 get_seq_h(struct ieee80211_hdr *hdr)
{
 return le16_to_cpu(hdr->seq_ctrl) >> 4;
}
