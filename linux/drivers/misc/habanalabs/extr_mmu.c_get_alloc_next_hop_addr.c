
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hl_ctx {int dummy; } ;


 scalar_t__ ULLONG_MAX ;
 scalar_t__ alloc_hop (struct hl_ctx*) ;
 scalar_t__ get_next_hop_addr (struct hl_ctx*,scalar_t__) ;

__attribute__((used)) static inline u64 get_alloc_next_hop_addr(struct hl_ctx *ctx, u64 curr_pte,
      bool *is_new_hop)
{
 u64 hop_addr = get_next_hop_addr(ctx, curr_pte);

 if (hop_addr == ULLONG_MAX) {
  hop_addr = alloc_hop(ctx);
  *is_new_hop = (hop_addr != ULLONG_MAX);
 }

 return hop_addr;
}
