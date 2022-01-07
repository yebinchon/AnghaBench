
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct brcmf_flowring_ring {int hash_id; int skblist; int status; } ;
struct brcmf_flowring_hash {size_t ifidx; size_t fifo; int flowid; int mac; } ;
struct brcmf_flowring {scalar_t__* addr_mode; int nrofrings; struct brcmf_flowring_ring** rings; struct brcmf_flowring_hash* hash; scalar_t__ tdls_active; } ;


 scalar_t__ ADDR_INDIRECT ;
 scalar_t__ ALLFFMAC ;
 int BRCMF_FLOWRING_HASHSIZE ;
 int BRCMF_FLOWRING_HASH_AP (size_t*,size_t,size_t) ;
 int BRCMF_FLOWRING_HASH_STA (size_t,size_t) ;
 int BRCMF_FLOWRING_INVALID_ID ;
 size_t BRCMF_FLOWRING_INVALID_IFIDX ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int RING_CLOSED ;
 scalar_t__ brcmf_flowring_is_tdls_mac (struct brcmf_flowring*,size_t*) ;
 size_t* brcmf_flowring_prio2fifo ;
 scalar_t__ is_multicast_ether_addr (size_t*) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 struct brcmf_flowring_ring* kzalloc (int,int ) ;
 int memcpy (int ,size_t*,int ) ;
 int skb_queue_head_init (int *) ;

u32 brcmf_flowring_create(struct brcmf_flowring *flow, u8 da[ETH_ALEN],
     u8 prio, u8 ifidx)
{
 struct brcmf_flowring_ring *ring;
 struct brcmf_flowring_hash *hash;
 u16 hash_idx;
 u32 i;
 bool found;
 u8 fifo;
 bool sta;
 u8 *mac;

 fifo = brcmf_flowring_prio2fifo[prio];
 sta = (flow->addr_mode[ifidx] == ADDR_INDIRECT);
 mac = da;
 if ((!sta) && (is_multicast_ether_addr(da))) {
  mac = (u8 *)ALLFFMAC;
  fifo = 0;
 }
 if ((sta) && (flow->tdls_active) &&
     (brcmf_flowring_is_tdls_mac(flow, da))) {
  sta = 0;
 }
 hash_idx = sta ? BRCMF_FLOWRING_HASH_STA(fifo, ifidx) :
     BRCMF_FLOWRING_HASH_AP(mac, fifo, ifidx);
 hash_idx &= (BRCMF_FLOWRING_HASHSIZE - 1);
 found = 0;
 hash = flow->hash;
 for (i = 0; i < BRCMF_FLOWRING_HASHSIZE; i++) {
  if ((hash[hash_idx].ifidx == BRCMF_FLOWRING_INVALID_IFIDX) &&
      (is_zero_ether_addr(hash[hash_idx].mac))) {
   found = 1;
   break;
  }
  hash_idx++;
  hash_idx &= (BRCMF_FLOWRING_HASHSIZE - 1);
 }
 if (found) {
  for (i = 0; i < flow->nrofrings; i++) {
   if (flow->rings[i] == ((void*)0))
    break;
  }
  if (i == flow->nrofrings)
   return -ENOMEM;

  ring = kzalloc(sizeof(*ring), GFP_ATOMIC);
  if (!ring)
   return -ENOMEM;

  memcpy(hash[hash_idx].mac, mac, ETH_ALEN);
  hash[hash_idx].fifo = fifo;
  hash[hash_idx].ifidx = ifidx;
  hash[hash_idx].flowid = i;

  ring->hash_id = hash_idx;
  ring->status = RING_CLOSED;
  skb_queue_head_init(&ring->skblist);
  flow->rings[i] = ring;

  return i;
 }
 return BRCMF_FLOWRING_INVALID_ID;
}
