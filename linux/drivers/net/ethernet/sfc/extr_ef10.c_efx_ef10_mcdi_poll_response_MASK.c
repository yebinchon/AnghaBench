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
struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct efx_ef10_nic_data {TYPE_1__ mcdi_buf; } ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCDI_HEADER_RESPONSE ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static bool FUNC2(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	const efx_dword_t hdr = *(const efx_dword_t *)nic_data->mcdi_buf.addr;

	FUNC1();
	return FUNC0(hdr, MCDI_HEADER_RESPONSE);
}