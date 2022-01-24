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
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  MAC_ADDR_LOAD; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct pch_gbe_hw *hw)
{
	FUNC0(0x01, &hw->reg->MAC_ADDR_LOAD);
}