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
struct ef4_nic {TYPE_1__* type; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int (* init ) (struct ef4_nic*) ;int /*<<< orphan*/  (* fini ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 
 int FUNC6 (struct ef4_nic*) ; 
 int FUNC7 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC10 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC12(struct ef4_nic *efx)
{
	int rc;

	/* Do start-of-day initialisation */
	rc = FUNC7(efx);
	if (rc)
		goto fail1;

	FUNC3(efx);

	rc = efx->type->init(efx);
	if (rc) {
		FUNC9(efx, probe, efx->net_dev,
			  "failed to initialise NIC\n");
		goto fail3;
	}

	rc = FUNC4(efx);
	if (rc) {
		FUNC9(efx, probe, efx->net_dev,
			  "failed to initialise port\n");
		goto fail4;
	}

	rc = FUNC6(efx);
	if (rc)
		goto fail5;
	rc = FUNC0(efx);
	if (rc)
		goto fail6;

	return 0;

 fail6:
	FUNC5(efx);
 fail5:
	FUNC2(efx);
 fail4:
	efx->type->fini(efx);
 fail3:
	FUNC1(efx);
	FUNC8(efx);
 fail1:
	return rc;
}