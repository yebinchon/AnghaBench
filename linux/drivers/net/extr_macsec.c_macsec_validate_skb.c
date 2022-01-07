
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct macsec_eth_header {int tci_an; int short_length; int packet_number; scalar_t__ unused; } ;


 int ETH_ALEN ;
 int MACSEC_TCI_ES ;
 int MACSEC_TCI_SC ;
 int MACSEC_TCI_SCB ;
 int MACSEC_TCI_VERSION ;
 int MIN_NON_SHORT_LEN ;
 int macsec_extra_len (int) ;

__attribute__((used)) static bool macsec_validate_skb(struct sk_buff *skb, u16 icv_len)
{
 struct macsec_eth_header *h = (struct macsec_eth_header *)skb->data;
 int len = skb->len - 2 * ETH_ALEN;
 int extra_len = macsec_extra_len(!!(h->tci_an & MACSEC_TCI_SC)) + icv_len;


 if (skb->len <= 16)
  return 0;




 if (h->tci_an & MACSEC_TCI_VERSION)
  return 0;


 if ((h->tci_an & MACSEC_TCI_ES || h->tci_an & MACSEC_TCI_SCB) &&
     (h->tci_an & MACSEC_TCI_SC))
  return 0;


 if (h->unused)
  return 0;


 if (!h->packet_number)
  return 0;


 if (h->short_length)
  return len == extra_len + h->short_length;
 return len >= extra_len + MIN_NON_SHORT_LEN;
}
