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
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_DMT_LEVEL_OFFSET ; 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct efx_nic *efx)
{
	/* Page zero of the EEPROM includes the DMT level at byte 94. */
	return FUNC0(efx, 0,
						   SFF_DMT_LEVEL_OFFSET);
}