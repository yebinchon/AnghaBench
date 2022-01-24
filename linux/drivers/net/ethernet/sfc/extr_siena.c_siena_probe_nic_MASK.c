#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct siena_nic_data {struct efx_nic* efx; } ;
struct TYPE_5__ {int dma_addr; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  prtad; } ;
struct efx_nic {struct siena_nic_data* nic_data; TYPE_2__ irq_status; TYPE_1__ mdio; int /*<<< orphan*/  phy_type; int /*<<< orphan*/  net_dev; scalar_t__ port_num; void* max_tx_channels; void* max_channels; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* EFX_MAX_CHANNELS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FRF_CZ_CS_PORT_NUM ; 
 int /*<<< orphan*/  FR_AZ_CS_DEBUG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MDIO_PRTAD_NONE ; 
 int /*<<< orphan*/  PHY_TYPE_NONE ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 scalar_t__ FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int FUNC5 (struct efx_nic*) ; 
 int FUNC6 (struct efx_nic*) ; 
 int FUNC7 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct efx_nic*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC13 (struct siena_nic_data*) ; 
 struct siena_nic_data* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC16 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC17 (struct efx_nic*) ; 
 int FUNC18 (struct efx_nic*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct efx_nic *efx)
{
	struct siena_nic_data *nic_data;
	efx_oword_t reg;
	int rc;

	/* Allocate storage for hardware specific data */
	nic_data = FUNC14(sizeof(struct siena_nic_data), GFP_KERNEL);
	if (!nic_data)
		return -ENOMEM;
	nic_data->efx = efx;
	efx->nic_data = nic_data;

	if (FUNC2(efx) != 0) {
		FUNC16(efx, probe, efx->net_dev,
			  "Siena FPGA not supported\n");
		rc = -ENODEV;
		goto fail1;
	}

	efx->max_channels = EFX_MAX_CHANNELS;
	efx->max_tx_channels = EFX_MAX_CHANNELS;

	FUNC11(efx, &reg, FR_AZ_CS_DEBUG);
	efx->port_num = FUNC1(reg, FRF_CZ_CS_PORT_NUM) - 1;

	rc = FUNC5(efx);
	if (rc)
		goto fail1;

	/* Now we can reset the NIC */
	rc = FUNC7(efx, RESET_TYPE_ALL);
	if (rc) {
		FUNC16(efx, probe, efx->net_dev, "failed to reset NIC\n");
		goto fail3;
	}

	FUNC17(efx);

	/* Allocate memory for INT_KER */
	rc = FUNC8(efx, &efx->irq_status, sizeof(efx_oword_t),
				  GFP_KERNEL);
	if (rc)
		goto fail4;
	FUNC0(efx->irq_status.dma_addr & 0x0f);

	FUNC15(efx, probe, efx->net_dev,
		  "INT_KER at %llx (virt %p phys %llx)\n",
		  (unsigned long long)efx->irq_status.dma_addr,
		  efx->irq_status.addr,
		  (unsigned long long)FUNC19(efx->irq_status.addr));

	/* Read in the non-volatile configuration */
	rc = FUNC18(efx);
	if (rc == -EINVAL) {
		FUNC16(efx, probe, efx->net_dev,
			  "NVRAM is invalid therefore using defaults\n");
		efx->phy_type = PHY_TYPE_NONE;
		efx->mdio.prtad = MDIO_PRTAD_NONE;
	} else if (rc) {
		goto fail5;
	}

	rc = FUNC6(efx);
	if (rc)
		goto fail5;

#ifdef CONFIG_SFC_SRIOV
	efx_siena_sriov_probe(efx);
#endif
	FUNC10(efx);

	return 0;

fail5:
	FUNC9(efx, &efx->irq_status);
fail4:
fail3:
	FUNC3(efx);
	FUNC4(efx);
fail1:
	FUNC13(efx->nic_data);
	return rc;
}