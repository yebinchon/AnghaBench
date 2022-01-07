
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_flowring_tdls_entry {struct brcmf_flowring_tdls_entry* next; int mac; } ;
struct brcmf_flowring {int tdls_active; struct brcmf_flowring_tdls_entry* tdls_entry; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int kfree (struct brcmf_flowring_tdls_entry*) ;
 struct brcmf_flowring_tdls_entry* kzalloc (int,int ) ;
 scalar_t__ memcmp (int ,int *,int ) ;
 int memcpy (int ,int *,int ) ;

void brcmf_flowring_add_tdls_peer(struct brcmf_flowring *flow, int ifidx,
      u8 peer[ETH_ALEN])
{
 struct brcmf_flowring_tdls_entry *tdls_entry;
 struct brcmf_flowring_tdls_entry *search;

 tdls_entry = kzalloc(sizeof(*tdls_entry), GFP_ATOMIC);
 if (tdls_entry == ((void*)0))
  return;

 memcpy(tdls_entry->mac, peer, ETH_ALEN);
 tdls_entry->next = ((void*)0);
 if (flow->tdls_entry == ((void*)0)) {
  flow->tdls_entry = tdls_entry;
 } else {
  search = flow->tdls_entry;
  if (memcmp(search->mac, peer, ETH_ALEN) == 0)
   goto free_entry;
  while (search->next) {
   search = search->next;
   if (memcmp(search->mac, peer, ETH_ALEN) == 0)
    goto free_entry;
  }
  search->next = tdls_entry;
 }

 flow->tdls_active = 1;
 return;

free_entry:
 kfree(tdls_entry);
}
