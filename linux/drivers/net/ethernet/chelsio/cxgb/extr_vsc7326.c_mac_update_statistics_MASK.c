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
struct cmac_statistics {int /*<<< orphan*/  TxOctetsOK; int /*<<< orphan*/  RxOctetsBad; int /*<<< orphan*/  RxOctetsOK; } ;
struct cmac {struct cmac_statistics const stats; TYPE_1__* instance; } ;
struct TYPE_2__ {scalar_t__ ticks; int index; } ;

/* Variables and functions */
 int MAC_STATS_UPDATE_FULL ; 
 scalar_t__ MAJOR_UPDATE_TICKS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const struct cmac_statistics *FUNC5(struct cmac *mac,
							   int flag)
{
	if (flag == MAC_STATS_UPDATE_FULL ||
	    mac->instance->ticks >= MAJOR_UPDATE_TICKS) {
		FUNC3(mac);
		mac->instance->ticks = 0;
	} else {
		int port = mac->instance->index;

		FUNC4(mac, FUNC1(port),
			    &mac->stats.RxOctetsOK);
		FUNC4(mac, FUNC0(port),
			    &mac->stats.RxOctetsBad);
		FUNC4(mac, FUNC2(port),
			    &mac->stats.TxOctetsOK);
		mac->instance->ticks++;
	}
	return &mac->stats;
}