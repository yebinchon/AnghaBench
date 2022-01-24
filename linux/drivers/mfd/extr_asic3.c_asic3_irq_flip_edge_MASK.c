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
typedef  int u16 ;
struct asic3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ ASIC3_GPIO_EDGE_TRIGGER ; 
 int FUNC0 (struct asic3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct asic3 *asic,
				u32 base, int bit)
{
	u16 edge;
	unsigned long flags;

	FUNC2(&asic->lock, flags);
	edge = FUNC0(asic,
				   base + ASIC3_GPIO_EDGE_TRIGGER);
	edge ^= bit;
	FUNC1(asic,
			     base + ASIC3_GPIO_EDGE_TRIGGER, edge);
	FUNC3(&asic->lock, flags);
}