
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct hl_ctx {TYPE_2__* hdev; } ;
struct TYPE_4__ {TYPE_1__* asic_funcs; } ;
struct TYPE_3__ {int (* write_pte ) (TYPE_2__*,int,int) ;} ;


 int OFFSET_MASK ;
 int PTE_PHYS_ADDR_MASK ;
 int get_phys_addr (struct hl_ctx*,int) ;
 int stub1 (TYPE_2__*,int,int) ;

__attribute__((used)) static inline void write_pte(struct hl_ctx *ctx, u64 shadow_pte_addr, u64 val)
{







 u64 phys_val = get_phys_addr(ctx, val & PTE_PHYS_ADDR_MASK) |
    (val & OFFSET_MASK);

 ctx->hdev->asic_funcs->write_pte(ctx->hdev,
     get_phys_addr(ctx, shadow_pte_addr),
     phys_val);

 *(u64 *) (uintptr_t) shadow_pte_addr = val;
}
