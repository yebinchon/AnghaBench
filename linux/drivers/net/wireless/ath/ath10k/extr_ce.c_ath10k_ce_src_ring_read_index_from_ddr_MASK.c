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
typedef  size_t u32 ;
struct ath10k_ce {size_t* vaddr_rri; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 size_t CE_DDR_RRI_MASK ; 
 struct ath10k_ce* FUNC0 (struct ath10k*) ; 

__attribute__((used)) static inline u32 FUNC1(struct ath10k *ar,
							 u32 ce_id)
{
	struct ath10k_ce *ce = FUNC0(ar);

	return ce->vaddr_rri[ce_id] & CE_DDR_RRI_MASK;
}