
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct neighbour {int dev; } ;
struct hh_cache {scalar_t__ hh_data; } ;
struct ethhdr {int dummy; } ;
typedef int __be16 ;


 int HH_DATA_OFF (int) ;
 int eth_header_cache (struct neighbour const*,struct hh_cache*,int ) ;
 int plip_rewrite_address (int ,struct ethhdr*) ;

__attribute__((used)) static int plip_hard_header_cache(const struct neighbour *neigh,
      struct hh_cache *hh, __be16 type)
{
 int ret;

 ret = eth_header_cache(neigh, hh, type);
 if (ret == 0) {
  struct ethhdr *eth;

  eth = (struct ethhdr*)(((u8*)hh->hh_data) +
           HH_DATA_OFF(sizeof(*eth)));
  plip_rewrite_address (neigh->dev, eth);
 }

 return ret;
}
