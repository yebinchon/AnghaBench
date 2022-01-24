#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct hl_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ ULLONG_MAX ; 
 scalar_t__ FUNC0 (struct hl_ctx*) ; 
 scalar_t__ FUNC1 (struct hl_ctx*,scalar_t__) ; 

__attribute__((used)) static inline u64 FUNC2(struct hl_ctx *ctx, u64 curr_pte,
						bool *is_new_hop)
{
	u64 hop_addr = FUNC1(ctx, curr_pte);

	if (hop_addr == ULLONG_MAX) {
		hop_addr = FUNC0(ctx);
		*is_new_hop = (hop_addr != ULLONG_MAX);
	}

	return hop_addr;
}