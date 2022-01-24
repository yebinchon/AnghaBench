#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_ce {TYPE_1__* bus_ops; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write32 ) (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct ath10k_ce* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

inline void FUNC2(struct ath10k *ar, u32 offset, u32 value)
{
	struct ath10k_ce *ce = FUNC0(ar);

	ce->bus_ops->write32(ar, offset, value);
}