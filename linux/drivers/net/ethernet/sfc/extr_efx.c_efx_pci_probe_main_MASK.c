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
struct efx_nic {TYPE_1__* type; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  filter_sem; } ;
struct TYPE_2__ {int (* init ) (struct efx_nic*) ;int /*<<< orphan*/  (* fini ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 
 int FUNC8 (struct efx_nic*) ; 
 int FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC13 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct efx_nic *efx)
{
	int rc;

	/* Do start-of-day initialisation */
	rc = FUNC9(efx);
	if (rc)
		goto fail1;

	FUNC5(efx);

	FUNC0(&efx->filter_sem);
	rc = efx->type->init(efx);
	FUNC15(&efx->filter_sem);
	if (rc) {
		FUNC12(efx, probe, efx->net_dev,
			  "failed to initialise NIC\n");
		goto fail3;
	}

	rc = FUNC6(efx);
	if (rc) {
		FUNC12(efx, probe, efx->net_dev,
			  "failed to initialise port\n");
		goto fail4;
	}

	rc = FUNC8(efx);
	if (rc)
		goto fail5;

	FUNC11(efx);
	rc = FUNC2(efx);
	if (rc)
		goto fail6;

	return 0;

 fail6:
	FUNC1(efx);
	FUNC7(efx);
 fail5:
	FUNC4(efx);
 fail4:
	efx->type->fini(efx);
 fail3:
	FUNC3(efx);
	FUNC10(efx);
 fail1:
	return rc;
}