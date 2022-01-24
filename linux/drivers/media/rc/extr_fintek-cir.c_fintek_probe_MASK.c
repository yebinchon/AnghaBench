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
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct rc_dev {char* input_phys; void* rx_resolution; void* timeout; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; TYPE_2__ dev; TYPE_1__ input_id; int /*<<< orphan*/  device_name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  allowed_protocols; struct fintek_dev* priv; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct fintek_dev {int /*<<< orphan*/  cir_port_len; int /*<<< orphan*/  cir_addr; int /*<<< orphan*/  cir_irq; struct rc_dev* rdev; int /*<<< orphan*/  chip_minor; int /*<<< orphan*/  chip_major; struct pnp_dev* pdev; int /*<<< orphan*/  fintek_lock; int /*<<< orphan*/  cr_dp; int /*<<< orphan*/  cr_ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int CIR_SAMPLE_PERIOD ; 
 int /*<<< orphan*/  CR_DATA_PORT ; 
 int /*<<< orphan*/  CR_INDEX_PORT ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FINTEK_DESCRIPTION ; 
 int /*<<< orphan*/  FINTEK_DRIVER_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_RC6_MCE ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  VENDOR_ID_FINTEK ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_dev*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  fintek_cir_isr ; 
 int /*<<< orphan*/  FUNC4 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct fintek_dev*) ; 
 int /*<<< orphan*/  fintek_close ; 
 int /*<<< orphan*/  FUNC6 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct fintek_dev*) ; 
 int FUNC8 (struct fintek_dev*) ; 
 int /*<<< orphan*/  fintek_open ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct fintek_dev*) ; 
 struct fintek_dev* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pnp_dev*,struct fintek_dev*) ; 
 struct rc_dev* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rc_dev*) ; 
 int FUNC21 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct pnp_dev *pdev, const struct pnp_device_id *dev_id)
{
	struct fintek_dev *fintek;
	struct rc_dev *rdev;
	int ret = -ENOMEM;

	fintek = FUNC12(sizeof(struct fintek_dev), GFP_KERNEL);
	if (!fintek)
		return ret;

	/* input device for IR remote (and tx) */
	rdev = FUNC19(RC_DRIVER_IR_RAW);
	if (!rdev)
		goto exit_free_dev_rdev;

	ret = -ENODEV;
	/* validate pnp resources */
	if (!FUNC17(pdev, 0)) {
		FUNC2(&pdev->dev, "IR PNP Port not valid!\n");
		goto exit_free_dev_rdev;
	}

	if (!FUNC14(pdev, 0)) {
		FUNC2(&pdev->dev, "IR PNP IRQ not valid!\n");
		goto exit_free_dev_rdev;
	}

	fintek->cir_addr = FUNC16(pdev, 0);
	fintek->cir_irq  = FUNC13(pdev, 0);
	fintek->cir_port_len = FUNC15(pdev, 0);

	fintek->cr_ip = CR_INDEX_PORT;
	fintek->cr_dp = CR_DATA_PORT;

	FUNC25(&fintek->fintek_lock);

	FUNC18(pdev, fintek);
	fintek->pdev = pdev;

	ret = FUNC8(fintek);
	if (ret)
		goto exit_free_dev_rdev;

	/* Initialize CIR & CIR Wake Logical Devices */
	FUNC7(fintek);
	FUNC4(fintek);
	FUNC6(fintek);

	/* Initialize CIR & CIR Wake Config Registers */
	FUNC5(fintek);

	/* Set up the rc device */
	rdev->priv = fintek;
	rdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	rdev->open = fintek_open;
	rdev->close = fintek_close;
	rdev->device_name = FINTEK_DESCRIPTION;
	rdev->input_phys = "fintek/cir0";
	rdev->input_id.bustype = BUS_HOST;
	rdev->input_id.vendor = VENDOR_ID_FINTEK;
	rdev->input_id.product = fintek->chip_major;
	rdev->input_id.version = fintek->chip_minor;
	rdev->dev.parent = &pdev->dev;
	rdev->driver_name = FINTEK_DRIVER_NAME;
	rdev->map_name = RC_MAP_RC6_MCE;
	rdev->timeout = FUNC0(1000);
	/* rx resolution is hardwired to 50us atm, 1, 25, 100 also possible */
	rdev->rx_resolution = FUNC0(CIR_SAMPLE_PERIOD);

	fintek->rdev = rdev;

	ret = -EBUSY;
	/* now claim resources */
	if (!FUNC24(fintek->cir_addr,
			    fintek->cir_port_len, FINTEK_DRIVER_NAME))
		goto exit_free_dev_rdev;

	if (FUNC23(fintek->cir_irq, fintek_cir_isr, IRQF_SHARED,
			FINTEK_DRIVER_NAME, (void *)fintek))
		goto exit_free_cir_addr;

	ret = FUNC21(rdev);
	if (ret)
		goto exit_free_irq;

	FUNC3(&pdev->dev, true);

	FUNC9(KERN_NOTICE, "driver has been successfully loaded\n");
	if (debug)
		FUNC1(fintek);

	return 0;

exit_free_irq:
	FUNC10(fintek->cir_irq, fintek);
exit_free_cir_addr:
	FUNC22(fintek->cir_addr, fintek->cir_port_len);
exit_free_dev_rdev:
	FUNC20(rdev);
	FUNC11(fintek);

	return ret;
}