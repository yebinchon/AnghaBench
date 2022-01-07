
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_flowring_tdls_entry {struct brcmf_flowring_tdls_entry* next; int mac; } ;
struct brcmf_flowring_hash {int ifidx; size_t flowid; int mac; } ;
struct brcmf_flowring {scalar_t__* addr_mode; int tdls_active; struct brcmf_flowring_tdls_entry* tdls_entry; TYPE_1__** rings; struct brcmf_flowring_hash* hash; int dev; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 scalar_t__ ADDR_INDIRECT ;
 size_t BRCMF_FLOWRING_HASHSIZE ;
 int ETH_ALEN ;
 scalar_t__ RING_CLOSING ;
 scalar_t__ RING_OPEN ;
 int brcmf_msgbuf_delete_flowring (struct brcmf_pub*,size_t) ;
 struct brcmf_bus* dev_get_drvdata (int ) ;
 int kfree (struct brcmf_flowring_tdls_entry*) ;
 scalar_t__ memcmp (int ,int *,int ) ;

void brcmf_flowring_delete_peer(struct brcmf_flowring *flow, int ifidx,
    u8 peer[ETH_ALEN])
{
 struct brcmf_bus *bus_if = dev_get_drvdata(flow->dev);
 struct brcmf_pub *drvr = bus_if->drvr;
 struct brcmf_flowring_hash *hash;
 struct brcmf_flowring_tdls_entry *prev;
 struct brcmf_flowring_tdls_entry *search;
 u32 i;
 u16 flowid;
 bool sta;

 sta = (flow->addr_mode[ifidx] == ADDR_INDIRECT);

 search = flow->tdls_entry;
 prev = ((void*)0);
 while (search) {
  if (memcmp(search->mac, peer, ETH_ALEN) == 0) {
   sta = 0;
   break;
  }
  prev = search;
  search = search->next;
 }

 hash = flow->hash;
 for (i = 0; i < BRCMF_FLOWRING_HASHSIZE; i++) {
  if ((sta || (memcmp(hash[i].mac, peer, ETH_ALEN) == 0)) &&
      (hash[i].ifidx == ifidx)) {
   flowid = flow->hash[i].flowid;
   if (flow->rings[flowid]->status == RING_OPEN) {
    flow->rings[flowid]->status = RING_CLOSING;
    brcmf_msgbuf_delete_flowring(drvr, flowid);
   }
  }
 }

 if (search) {
  if (prev)
   prev->next = search->next;
  else
   flow->tdls_entry = search->next;
  kfree(search);
  if (flow->tdls_entry == ((void*)0))
   flow->tdls_active = 0;
 }
}
