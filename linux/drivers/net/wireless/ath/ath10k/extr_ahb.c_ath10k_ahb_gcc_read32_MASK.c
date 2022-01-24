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
typedef  scalar_t__ u32 ;
struct ath10k_ahb {scalar_t__ gcc_mem; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 struct ath10k_ahb* FUNC0 (struct ath10k*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(struct ath10k *ar, u32 offset)
{
	struct ath10k_ahb *ar_ahb = FUNC0(ar);

	return FUNC1(ar_ahb->gcc_mem + offset);
}