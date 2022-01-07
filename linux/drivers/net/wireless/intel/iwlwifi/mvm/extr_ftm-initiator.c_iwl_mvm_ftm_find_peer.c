
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_pmsr_request_peer {int addr; } ;
struct cfg80211_pmsr_request {int n_peers; struct cfg80211_pmsr_request_peer* peers; } ;


 int ENOENT ;
 scalar_t__ ether_addr_equal_unaligned (int ,int const*) ;

__attribute__((used)) static int iwl_mvm_ftm_find_peer(struct cfg80211_pmsr_request *req,
     const u8 *addr)
{
 int i;

 for (i = 0; i < req->n_peers; i++) {
  struct cfg80211_pmsr_request_peer *peer = &req->peers[i];

  if (ether_addr_equal_unaligned(peer->addr, addr))
   return i;
 }

 return -ENOENT;
}
