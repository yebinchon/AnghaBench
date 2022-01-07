
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nix_mcast {int next_free_mce; } ;



__attribute__((used)) static u16 nix_alloc_mce_list(struct nix_mcast *mcast, int count)
{
 int idx;

 if (!mcast)
  return 0;

 idx = mcast->next_free_mce;
 mcast->next_free_mce += count;
 return idx;
}
