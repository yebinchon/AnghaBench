
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hl_ctx {int dummy; } ;


 int write_final_pte (struct hl_ctx*,int ,int ) ;

__attribute__((used)) static inline void clear_pte(struct hl_ctx *ctx, u64 pte_addr)
{

 write_final_pte(ctx, pte_addr, 0);
}
