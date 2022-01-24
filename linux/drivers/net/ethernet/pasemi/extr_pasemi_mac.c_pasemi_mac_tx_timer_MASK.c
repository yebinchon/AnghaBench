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
struct timer_list {int dummy; } ;
struct pasemi_mac_txring {int /*<<< orphan*/  clean_timer; struct pasemi_mac* mac; } ;
struct pasemi_mac {int dummy; } ;

/* Variables and functions */
 scalar_t__ TX_CLEAN_INTERVAL ; 
 int /*<<< orphan*/  clean_timer ; 
 struct pasemi_mac_txring* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pasemi_mac_txring*) ; 
 int /*<<< orphan*/  FUNC3 (struct pasemi_mac*) ; 
 struct pasemi_mac_txring* txring ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct pasemi_mac_txring *txring = FUNC0(txring, t, clean_timer);
	struct pasemi_mac *mac = txring->mac;

	FUNC2(txring);

	FUNC1(&txring->clean_timer, jiffies + TX_CLEAN_INTERVAL);

	FUNC3(mac);
}