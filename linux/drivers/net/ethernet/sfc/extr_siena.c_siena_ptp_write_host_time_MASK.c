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
typedef  int /*<<< orphan*/  u32 ;
struct efx_nic {int dummy; } ;

/* Variables and functions */
 scalar_t__ FR_CZ_MC_TREG_SMEM ; 
 scalar_t__ MC_SMEM_P0_PTP_TIME_OFST ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx, u32 host_time)
{
	FUNC0(efx, FUNC1(host_time),
		    FR_CZ_MC_TREG_SMEM + MC_SMEM_P0_PTP_TIME_OFST);
}