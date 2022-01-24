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
struct efx_nic {TYPE_1__* type; int /*<<< orphan*/  net_dev; } ;
struct efx_mcdi_iface {unsigned int seqno; int resp_hdr_len; unsigned int resp_data_len; int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  resprc; scalar_t__ credits; } ;
struct TYPE_2__ {int mcdi_max_ver; } ;

/* Variables and functions */
 unsigned int SEQ_MASK ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_mcdi_iface*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_mcdi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct efx_nic *efx, unsigned int seqno,
			    unsigned int datalen, unsigned int mcdi_err)
{
	struct efx_mcdi_iface *mcdi = FUNC0(efx);
	bool wake = false;

	FUNC6(&mcdi->iface_lock);

	if ((seqno ^ mcdi->seqno) & SEQ_MASK) {
		if (mcdi->credits)
			/* The request has been cancelled */
			--mcdi->credits;
		else
			FUNC5(efx, hw, efx->net_dev,
				  "MC response mismatch tx seq 0x%x rx "
				  "seq 0x%x\n", seqno, mcdi->seqno);
	} else {
		if (efx->type->mcdi_max_ver >= 2) {
			/* MCDI v2 responses don't fit in an event */
			FUNC4(efx);
		} else {
			mcdi->resprc = FUNC3(mcdi_err);
			mcdi->resp_hdr_len = 4;
			mcdi->resp_data_len = datalen;
		}

		wake = true;
	}

	FUNC7(&mcdi->iface_lock);

	if (wake) {
		if (!FUNC1(mcdi, false))
			(void) FUNC2(mcdi);

		/* If the interface isn't RUNNING_ASYNC or
		 * RUNNING_SYNC then we've received a duplicate
		 * completion after we've already transitioned back to
		 * QUIESCENT. [A subsequent invocation would increment
		 * seqno, so would have failed the seqno check].
		 */
	}
}