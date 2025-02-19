
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hl_ctx {int asid; TYPE_2__* hdev; } ;
struct TYPE_3__ {int mmu_hop_table_size; } ;
struct TYPE_4__ {TYPE_1__ asic_prop; scalar_t__ mmu_shadow_hop0; } ;



__attribute__((used)) static inline u64 get_hop0_addr(struct hl_ctx *ctx)
{
 return (u64) (uintptr_t) ctx->hdev->mmu_shadow_hop0 +
   (ctx->asid * ctx->hdev->asic_prop.mmu_hop_table_size);
}
