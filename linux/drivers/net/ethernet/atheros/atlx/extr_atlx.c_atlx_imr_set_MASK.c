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
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atlx_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ REG_IMR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct atlx_adapter *adapter,
				unsigned int imr)
{
	FUNC1(imr, adapter->hw.hw_addr + REG_IMR);
	FUNC0(adapter->hw.hw_addr + REG_IMR);
}