#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx_hash_key; } ;
struct efx_nic {int n_channels; TYPE_1__* type; int /*<<< orphan*/  timer_quantum_ns; int /*<<< orphan*/  irq_mod_step_us; int /*<<< orphan*/  n_rx_channels; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  n_tx_channels; TYPE_2__ rss_context; int /*<<< orphan*/  max_tx_channels; int /*<<< orphan*/  max_channels; } ;
struct TYPE_3__ {int (* probe ) (struct efx_nic*) ;int (* dimension_resources ) (struct efx_nic*) ;int /*<<< orphan*/  (* remove ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EAGAIN ; 
 int ENOSPC ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  rx_irq_mod_usec ; 
 int FUNC11 (struct efx_nic*) ; 
 int FUNC12 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC13 (struct efx_nic*) ; 
 int /*<<< orphan*/  tx_irq_mod_usec ; 

__attribute__((used)) static int FUNC14(struct efx_nic *efx)
{
	int rc;

	FUNC7(efx, probe, efx->net_dev, "creating NIC\n");

	/* Carry out hardware-type specific initialisation */
	rc = efx->type->probe(efx);
	if (rc)
		return rc;

	do {
		if (!efx->max_channels || !efx->max_tx_channels) {
			FUNC8(efx, drv, efx->net_dev,
				  "Insufficient resources to allocate"
				  " any channels\n");
			rc = -ENOSPC;
			goto fail1;
		}

		/* Determine the number of channels and queues by trying
		 * to hook in MSI-X interrupts.
		 */
		rc = FUNC2(efx);
		if (rc)
			goto fail1;

		FUNC4(efx);

		/* dimension_resources can fail with EAGAIN */
		rc = efx->type->dimension_resources(efx);
		if (rc != 0 && rc != -EAGAIN)
			goto fail2;

		if (rc == -EAGAIN)
			/* try again with new max_channels */
			FUNC3(efx);

	} while (rc == -EAGAIN);

	if (efx->n_channels > 1)
		FUNC6(efx->rss_context.rx_hash_key,
				    sizeof(efx->rss_context.rx_hash_key));
	FUNC5(efx, &efx->rss_context);

	FUNC10(efx->net_dev, efx->n_tx_channels);
	FUNC9(efx->net_dev, efx->n_rx_channels);

	/* Initialise the interrupt moderation settings */
	efx->irq_mod_step_us = FUNC0(efx->timer_quantum_ns, 1000);
	FUNC1(efx, tx_irq_mod_usec, rx_irq_mod_usec, true,
				true);

	return 0;

fail2:
	FUNC3(efx);
fail1:
	efx->type->remove(efx);
	return rc;
}