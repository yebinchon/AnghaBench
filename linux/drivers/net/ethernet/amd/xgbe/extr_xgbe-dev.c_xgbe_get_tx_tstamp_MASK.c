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
typedef  unsigned int u64 ;
struct xgbe_prv_data {TYPE_1__* vdata; } ;
struct TYPE_2__ {scalar_t__ tx_tstamp_workaround; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_TXSNR ; 
 int /*<<< orphan*/  MAC_TXSSR ; 
 unsigned int NSEC_PER_SEC ; 
 int /*<<< orphan*/  TXTSSTSMIS ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC2(struct xgbe_prv_data *pdata)
{
	unsigned int tx_snr, tx_ssr;
	u64 nsec;

	if (pdata->vdata->tx_tstamp_workaround) {
		tx_snr = FUNC1(pdata, MAC_TXSNR);
		tx_ssr = FUNC1(pdata, MAC_TXSSR);
	} else {
		tx_ssr = FUNC1(pdata, MAC_TXSSR);
		tx_snr = FUNC1(pdata, MAC_TXSNR);
	}

	if (FUNC0(tx_snr, MAC_TXSNR, TXTSSTSMIS))
		return 0;

	nsec = tx_ssr;
	nsec *= NSEC_PER_SEC;
	nsec += tx_snr;

	return nsec;
}