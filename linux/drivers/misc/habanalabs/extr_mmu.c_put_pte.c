
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pgt_info {int num_of_ptes; } ;
struct hl_ctx {int dummy; } ;


 int free_hop (struct hl_ctx*,int ) ;
 struct pgt_info* get_pgt_info (struct hl_ctx*,int ) ;

__attribute__((used)) static inline int put_pte(struct hl_ctx *ctx, u64 hop_addr)
{
 struct pgt_info *pgt_info = get_pgt_info(ctx, hop_addr);
 int num_of_ptes_left;

 pgt_info->num_of_ptes--;





 num_of_ptes_left = pgt_info->num_of_ptes;
 if (!num_of_ptes_left)
  free_hop(ctx, hop_addr);

 return num_of_ptes_left;
}
