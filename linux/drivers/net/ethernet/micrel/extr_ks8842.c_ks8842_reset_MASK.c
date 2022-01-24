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
struct ks8842_adapter {int conf_flags; scalar_t__ hw_addr; } ;

/* Variables and functions */
 int MICREL_KS884X ; 
 scalar_t__ REG_GRR ; 
 scalar_t__ REG_TIMB_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8842_adapter*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ks8842_adapter *adapter)
{
	if (adapter->conf_flags & MICREL_KS884X) {
		FUNC2(adapter, 3, 1, REG_GRR);
		FUNC3(10);
		FUNC0(0, adapter->hw_addr + REG_GRR);
	} else {
		/* The KS8842 goes haywire when doing softare reset
		* a work around in the timberdale IP is implemented to
		* do a hardware reset instead
		ks8842_write16(adapter, 3, 1, REG_GRR);
		msleep(10);
		iowrite16(0, adapter->hw_addr + REG_GRR);
		*/
		FUNC1(0x1, adapter->hw_addr + REG_TIMB_RST);
		FUNC3(20);
	}
}