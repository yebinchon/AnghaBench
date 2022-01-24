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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ks8842_adapter {int conf_flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int ETH_ALEN ; 
 int MICREL_KS884X ; 
 scalar_t__ REG_MACAR1 ; 
 scalar_t__ REG_MACAR2 ; 
 scalar_t__ REG_MACAR3 ; 
 scalar_t__ REG_MARH ; 
 scalar_t__ REG_MARL ; 
 scalar_t__ REG_MARM ; 
 int /*<<< orphan*/  FUNC0 (struct ks8842_adapter*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8842_adapter*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8842_adapter*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ks8842_adapter *adapter, u8 *mac)
{
	unsigned long flags;
	unsigned i;

	FUNC3(&adapter->lock, flags);
	for (i = 0; i < ETH_ALEN; i++) {
		FUNC2(adapter, 2, mac[ETH_ALEN - i - 1], REG_MARL + i);
		if (!(adapter->conf_flags & MICREL_KS884X))
			FUNC2(adapter, 39, mac[ETH_ALEN - i - 1],
				REG_MACAR1 + i);
	}

	if (adapter->conf_flags & MICREL_KS884X) {
		/*
		the sequence of saving mac addr between MAC and Switch is
		different.
		*/

		u16 mac;

		mac = FUNC0(adapter, 2, REG_MARL);
		FUNC1(adapter, 39, mac, REG_MACAR3);
		mac = FUNC0(adapter, 2, REG_MARM);
		FUNC1(adapter, 39, mac, REG_MACAR2);
		mac = FUNC0(adapter, 2, REG_MARH);
		FUNC1(adapter, 39, mac, REG_MACAR1);
	}
	FUNC4(&adapter->lock, flags);
}