
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htc_hdr {scalar_t__ trailer_len; int len; } ;


 scalar_t__ __le16_to_cpu (int ) ;

__attribute__((used)) static inline bool is_trailer_only_msg(struct ath10k_htc_hdr *htc_hdr)
{
 return __le16_to_cpu(htc_hdr->len) == htc_hdr->trailer_len;
}
