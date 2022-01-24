#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {scalar_t__ bus; scalar_t__ devfn; } ;
struct falcon_nic_data {int stats_disable_count; struct pci_dev* pci_dev2; int /*<<< orphan*/  stats_timer; struct ef4_nic* efx; } ;
struct TYPE_12__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; TYPE_2__ dev; TYPE_8__* algo_data; int /*<<< orphan*/  owner; } ;
struct TYPE_16__ {struct ef4_nic* data; } ;
struct falcon_board {TYPE_5__ i2c_adap; TYPE_3__* type; TYPE_8__ i2c_data; } ;
struct TYPE_17__ {int dma_addr; int /*<<< orphan*/  addr; } ;
struct ef4_nic {int max_channels; int max_tx_channels; int timer_quantum_ns; int timer_max_ns; struct falcon_nic_data* nic_data; TYPE_9__ irq_status; int /*<<< orphan*/  net_dev; TYPE_4__* pci_dev; TYPE_1__* type; struct ef4_nic* primary; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;
struct TYPE_14__ {int revision; scalar_t__ bus; scalar_t__ devfn; int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int (* init ) (struct ef4_nic*) ;} ;
struct TYPE_11__ {int timer_period_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EF4_MAX_CHANNELS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EF4_REV_FALCON_A1 ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FRF_AA_STRAP_PCIE ; 
 int /*<<< orphan*/  FRF_AB_STRAP_10G ; 
 int /*<<< orphan*/  FR_AB_NIC_STAT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_SOLARFLARE_SFC4000A_1 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_SOLARFLARE ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ef4_nic*) ; 
 int FUNC4 (struct ef4_nic*,TYPE_9__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,TYPE_9__*) ; 
 scalar_t__ FUNC6 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct falcon_board* FUNC8 (struct ef4_nic*) ; 
 TYPE_8__ falcon_i2c_bit_operations ; 
 int FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*) ; 
 int /*<<< orphan*/  falcon_stats_timer_func ; 
 int FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (struct falcon_nic_data*) ; 
 struct falcon_nic_data* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct pci_dev* FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 struct pci_dev* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC22 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data;
	struct falcon_board *board;
	int rc;

	efx->primary = efx; /* only one usable function per controller */

	/* Allocate storage for hardware specific data */
	nic_data = FUNC14(sizeof(*nic_data), GFP_KERNEL);
	if (!nic_data)
		return -ENOMEM;
	efx->nic_data = nic_data;
	nic_data->efx = efx;

	rc = -ENODEV;

	if (FUNC3(efx) != 0) {
		FUNC17(efx, probe, efx->net_dev,
			  "Falcon FPGA not supported\n");
		goto fail1;
	}

	if (FUNC6(efx) <= EF4_REV_FALCON_A1) {
		ef4_oword_t nic_stat;
		struct pci_dev *dev;
		u8 pci_rev = efx->pci_dev->revision;

		if ((pci_rev == 0xff) || (pci_rev == 0)) {
			FUNC17(efx, probe, efx->net_dev,
				  "Falcon rev A0 not supported\n");
			goto fail1;
		}
		FUNC7(efx, &nic_stat, FR_AB_NIC_STAT);
		if (FUNC1(nic_stat, FRF_AB_STRAP_10G) == 0) {
			FUNC17(efx, probe, efx->net_dev,
				  "Falcon rev A1 1G not supported\n");
			goto fail1;
		}
		if (FUNC1(nic_stat, FRF_AA_STRAP_PCIE) == 0) {
			FUNC17(efx, probe, efx->net_dev,
				  "Falcon rev A1 PCI-X not supported\n");
			goto fail1;
		}

		dev = FUNC18(efx->pci_dev);
		while ((dev = FUNC20(PCI_VENDOR_ID_SOLARFLARE,
					     PCI_DEVICE_ID_SOLARFLARE_SFC4000A_1,
					     dev))) {
			if (dev->bus == efx->pci_dev->bus &&
			    dev->devfn == efx->pci_dev->devfn + 1) {
				nic_data->pci_dev2 = dev;
				break;
			}
		}
		if (!nic_data->pci_dev2) {
			FUNC17(efx, probe, efx->net_dev,
				  "failed to find secondary function\n");
			rc = -ENODEV;
			goto fail2;
		}
	}

	/* Now we can reset the NIC */
	rc = FUNC2(efx, RESET_TYPE_ALL);
	if (rc) {
		FUNC17(efx, probe, efx->net_dev, "failed to reset NIC\n");
		goto fail3;
	}

	/* Allocate memory for INT_KER */
	rc = FUNC4(efx, &efx->irq_status, sizeof(ef4_oword_t),
				  GFP_KERNEL);
	if (rc)
		goto fail4;
	FUNC0(efx->irq_status.dma_addr & 0x0f);

	FUNC16(efx, probe, efx->net_dev,
		  "INT_KER at %llx (virt %p phys %llx)\n",
		  (u64)efx->irq_status.dma_addr,
		  efx->irq_status.addr,
		  (u64)FUNC24(efx->irq_status.addr));

	FUNC10(efx);

	/* Read in the non-volatile configuration */
	rc = FUNC9(efx);
	if (rc) {
		if (rc == -EINVAL)
			FUNC17(efx, probe, efx->net_dev, "NVRAM is invalid\n");
		goto fail5;
	}

	efx->max_channels = (FUNC6(efx) <= EF4_REV_FALCON_A1 ? 4 :
			     EF4_MAX_CHANNELS);
	efx->max_tx_channels = efx->max_channels;
	efx->timer_quantum_ns = 4968; /* 621 cycles */
	efx->timer_max_ns = efx->type->timer_period_max *
			    efx->timer_quantum_ns;

	/* Initialise I2C adapter */
	board = FUNC8(efx);
	board->i2c_adap.owner = THIS_MODULE;
	board->i2c_data = falcon_i2c_bit_operations;
	board->i2c_data.data = efx;
	board->i2c_adap.algo_data = &board->i2c_data;
	board->i2c_adap.dev.parent = &efx->pci_dev->dev;
	FUNC21(board->i2c_adap.name, "SFC4000 GPIO",
		sizeof(board->i2c_adap.name));
	rc = FUNC11(&board->i2c_adap);
	if (rc)
		goto fail5;

	rc = FUNC8(efx)->type->init(efx);
	if (rc) {
		FUNC17(efx, probe, efx->net_dev,
			  "failed to initialise board\n");
		goto fail6;
	}

	nic_data->stats_disable_count = 1;
	FUNC23(&nic_data->stats_timer, falcon_stats_timer_func, 0);

	return 0;

 fail6:
	FUNC12(&board->i2c_adap);
	FUNC15(&board->i2c_adap, 0, sizeof(board->i2c_adap));
 fail5:
	FUNC5(efx, &efx->irq_status);
 fail4:
 fail3:
	if (nic_data->pci_dev2) {
		FUNC19(nic_data->pci_dev2);
		nic_data->pci_dev2 = NULL;
	}
 fail2:
 fail1:
	FUNC13(efx->nic_data);
	return rc;
}