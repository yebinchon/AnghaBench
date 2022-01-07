
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_flowring_tdls_entry {struct brcmf_flowring_tdls_entry* next; int mac; } ;
struct brcmf_flowring {struct brcmf_flowring_tdls_entry* tdls_entry; } ;


 int ETH_ALEN ;
 scalar_t__ memcmp (int ,int *,int ) ;

__attribute__((used)) static bool
brcmf_flowring_is_tdls_mac(struct brcmf_flowring *flow, u8 mac[ETH_ALEN])
{
 struct brcmf_flowring_tdls_entry *search;

 search = flow->tdls_entry;

 while (search) {
  if (memcmp(search->mac, mac, ETH_ALEN) == 0)
   return 1;
  search = search->next;
 }

 return 0;
}
