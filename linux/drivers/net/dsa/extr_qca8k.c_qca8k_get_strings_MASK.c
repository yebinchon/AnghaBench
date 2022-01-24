#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ETH_GSTRING_LEN ; 
 scalar_t__ ETH_SS_STATS ; 
 TYPE_1__* ar8327_mib ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct dsa_switch *ds, int port, u32 stringset, uint8_t *data)
{
	int i;

	if (stringset != ETH_SS_STATS)
		return;

	for (i = 0; i < FUNC0(ar8327_mib); i++)
		FUNC1(data + i * ETH_GSTRING_LEN, ar8327_mib[i].name,
			ETH_GSTRING_LEN);
}