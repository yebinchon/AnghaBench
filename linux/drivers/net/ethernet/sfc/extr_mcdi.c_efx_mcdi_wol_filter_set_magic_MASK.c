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
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_CMD_WOL_TYPE_MAGIC ; 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int*) ; 

int
FUNC1(struct efx_nic *efx,  const u8 *mac, int *id_out)
{
	return FUNC0(efx, MC_CMD_WOL_TYPE_MAGIC, mac, id_out);
}