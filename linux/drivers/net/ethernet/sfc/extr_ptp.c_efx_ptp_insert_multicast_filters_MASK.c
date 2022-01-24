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
struct efx_ptp_data {int rxfilter_installed; int rxfilter_event; int rxfilter_general; int /*<<< orphan*/  channel; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;
struct efx_filter_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_FILTER_PRI_REQUIRED ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PTP_ADDRESS ; 
 int /*<<< orphan*/  PTP_EVENT_PORT ; 
 int /*<<< orphan*/  PTP_GENERAL_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_filter_spec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct efx_nic*,struct efx_filter_spec*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct efx_filter_spec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct efx_nic *efx)
{
	struct efx_ptp_data *ptp = efx->ptp_data;
	struct efx_filter_spec rxfilter;
	int rc;

	if (!ptp->channel || ptp->rxfilter_installed)
		return 0;

	/* Must filter on both event and general ports to ensure
	 * that there is no packet re-ordering.
	 */
	FUNC1(&rxfilter, EFX_FILTER_PRI_REQUIRED, 0,
			   FUNC5(
				   FUNC0(ptp->channel)));
	rc = FUNC4(&rxfilter, IPPROTO_UDP,
				       FUNC6(PTP_ADDRESS),
				       FUNC7(PTP_EVENT_PORT));
	if (rc != 0)
		return rc;

	rc = FUNC2(efx, &rxfilter, true);
	if (rc < 0)
		return rc;
	ptp->rxfilter_event = rc;

	FUNC1(&rxfilter, EFX_FILTER_PRI_REQUIRED, 0,
			   FUNC5(
				   FUNC0(ptp->channel)));
	rc = FUNC4(&rxfilter, IPPROTO_UDP,
				       FUNC6(PTP_ADDRESS),
				       FUNC7(PTP_GENERAL_PORT));
	if (rc != 0)
		goto fail;

	rc = FUNC2(efx, &rxfilter, true);
	if (rc < 0)
		goto fail;
	ptp->rxfilter_general = rc;

	ptp->rxfilter_installed = true;
	return 0;

fail:
	FUNC3(efx, EFX_FILTER_PRI_REQUIRED,
				  ptp->rxfilter_event);
	return rc;
}