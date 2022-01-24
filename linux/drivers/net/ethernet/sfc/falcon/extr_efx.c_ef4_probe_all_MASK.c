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
struct ef4_nic {int /*<<< orphan*/  net_dev; scalar_t__ txq_entries; scalar_t__ rxq_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EF4_DEFAULT_DMAQ_SIZE ; 
 scalar_t__ EF4_RXQ_MIN_ENT ; 
 scalar_t__ FUNC1 (struct ef4_nic*) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct ef4_nic*) ; 
 int FUNC4 (struct ef4_nic*) ; 
 int FUNC5 (struct ef4_nic*) ; 
 int FUNC6 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC11(struct ef4_nic *efx)
{
	int rc;

	rc = FUNC5(efx);
	if (rc) {
		FUNC10(efx, probe, efx->net_dev, "failed to create NIC\n");
		goto fail1;
	}

	rc = FUNC6(efx);
	if (rc) {
		FUNC10(efx, probe, efx->net_dev, "failed to create port\n");
		goto fail2;
	}

	FUNC0(EF4_DEFAULT_DMAQ_SIZE < EF4_RXQ_MIN_ENT);
	if (FUNC2(EF4_DEFAULT_DMAQ_SIZE < FUNC1(efx))) {
		rc = -EINVAL;
		goto fail3;
	}
	efx->rxq_entries = efx->txq_entries = EF4_DEFAULT_DMAQ_SIZE;

	rc = FUNC4(efx);
	if (rc) {
		FUNC10(efx, probe, efx->net_dev,
			  "failed to create filter tables\n");
		goto fail4;
	}

	rc = FUNC3(efx);
	if (rc)
		goto fail5;

	return 0;

 fail5:
	FUNC7(efx);
 fail4:
 fail3:
	FUNC9(efx);
 fail2:
	FUNC8(efx);
 fail1:
	return rc;
}