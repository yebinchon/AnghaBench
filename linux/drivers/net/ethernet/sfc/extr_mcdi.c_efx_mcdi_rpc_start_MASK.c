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
struct efx_nic {scalar_t__ mc_bist_for_other_fn; } ;
struct efx_mcdi_iface {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 int ENETDOWN ; 
 scalar_t__ MCDI_MODE_FAIL ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_mcdi_iface*) ; 
 int FUNC2 (struct efx_nic*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,unsigned int,int /*<<< orphan*/  const*,size_t) ; 

int FUNC4(struct efx_nic *efx, unsigned cmd,
		       const efx_dword_t *inbuf, size_t inlen)
{
	struct efx_mcdi_iface *mcdi = FUNC0(efx);
	int rc;

	rc = FUNC2(efx, cmd, inlen);
	if (rc)
		return rc;

	if (efx->mc_bist_for_other_fn)
		return -ENETDOWN;

	if (mcdi->mode == MCDI_MODE_FAIL)
		return -ENETDOWN;

	FUNC1(mcdi);
	FUNC3(efx, cmd, inbuf, inlen);
	return 0;
}