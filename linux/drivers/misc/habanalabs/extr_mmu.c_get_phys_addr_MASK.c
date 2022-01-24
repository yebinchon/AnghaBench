#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct hl_ctx {TYPE_2__* hdev; } ;
struct TYPE_6__ {scalar_t__ phys_addr; } ;
struct TYPE_4__ {scalar_t__ mmu_hop_table_size; } ;
struct TYPE_5__ {TYPE_1__ asic_prop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hl_ctx*) ; 
 TYPE_3__* FUNC1 (struct hl_ctx*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct hl_ctx*) ; 

__attribute__((used)) static inline u64 FUNC3(struct hl_ctx *ctx, u64 shadow_addr)
{
	u64 page_mask = (ctx->hdev->asic_prop.mmu_hop_table_size - 1);
	u64 shadow_hop_addr = shadow_addr & ~page_mask;
	u64 pte_offset = shadow_addr & page_mask;
	u64 phys_hop_addr;

	if (shadow_hop_addr != FUNC0(ctx))
		phys_hop_addr = FUNC1(ctx, shadow_hop_addr)->phys_addr;
	else
		phys_hop_addr = FUNC2(ctx);

	return phys_hop_addr + pte_offset;
}