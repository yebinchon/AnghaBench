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
typedef  size_t u8 ;
struct il_station_entry {int dummy; } ;
struct il_priv {TYPE_1__* stations; } ;
struct TYPE_2__ {int used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int IL_STA_DRIVER_ACTIVE ; 
 int IL_STA_UCODE_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct il_priv *il, u8 sta_id)
{
	/* Ucode must be active and driver must be non active */
	if ((il->stations[sta_id].
	     used & (IL_STA_UCODE_ACTIVE | IL_STA_DRIVER_ACTIVE)) !=
	    IL_STA_UCODE_ACTIVE)
		FUNC1("removed non active STA %u\n", sta_id);

	il->stations[sta_id].used &= ~IL_STA_UCODE_ACTIVE;

	FUNC2(&il->stations[sta_id], 0, sizeof(struct il_station_entry));
	FUNC0("Removed STA %u\n", sta_id);
}