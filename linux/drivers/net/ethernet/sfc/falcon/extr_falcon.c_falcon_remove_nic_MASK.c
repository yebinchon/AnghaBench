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
struct falcon_nic_data {int /*<<< orphan*/ * pci_dev2; } ;
struct falcon_board {int /*<<< orphan*/  i2c_adap; TYPE_1__* type; } ;
struct ef4_nic {struct falcon_nic_data* nic_data; int /*<<< orphan*/  irq_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fini ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ *) ; 
 struct falcon_board* FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct falcon_nic_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*) ; 

__attribute__((used)) static void FUNC8(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	struct falcon_board *board = FUNC2(efx);

	board->type->fini(efx);

	/* Remove I2C adapter and clear it in preparation for a retry */
	FUNC3(&board->i2c_adap);
	FUNC5(&board->i2c_adap, 0, sizeof(board->i2c_adap));

	FUNC1(efx, &efx->irq_status);

	FUNC0(efx, RESET_TYPE_ALL);

	/* Release the second function after the reset */
	if (nic_data->pci_dev2) {
		FUNC6(nic_data->pci_dev2);
		nic_data->pci_dev2 = NULL;
	}

	/* Tear down the private nic state */
	FUNC4(efx->nic_data);
	efx->nic_data = NULL;
}