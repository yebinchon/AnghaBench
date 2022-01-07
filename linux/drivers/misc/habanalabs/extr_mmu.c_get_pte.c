
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hl_ctx {int dummy; } ;
struct TYPE_2__ {int num_of_ptes; } ;


 TYPE_1__* get_pgt_info (struct hl_ctx*,int ) ;

__attribute__((used)) static inline void get_pte(struct hl_ctx *ctx, u64 hop_addr)
{
 get_pgt_info(ctx, hop_addr)->num_of_ptes++;
}
