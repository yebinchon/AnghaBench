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
struct rc_dev {char* device_name; int /*<<< orphan*/  s_carrier_report; int /*<<< orphan*/  s_tx_duty_cycle; int /*<<< orphan*/  s_tx_carrier; int /*<<< orphan*/  s_tx_mask; int /*<<< orphan*/  tx_ir; int /*<<< orphan*/  s_learning_mode; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  s_idle; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct ene_device* priv; int /*<<< orphan*/  allowed_protocols; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct ene_device {int hw_io; int irq; int hw_learning_and_tx_capable; struct rc_dev* rdev; int /*<<< orphan*/  tx_complete; int /*<<< orphan*/  tx_sim_timer; struct pnp_dev* pnp_dev; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENE_DEFAULT_SAMPLE_PERIOD ; 
 int /*<<< orphan*/  ENE_DRIVER_NAME ; 
 scalar_t__ ENE_IO_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_RC6_MCE ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ene_close ; 
 int FUNC2 (struct ene_device*) ; 
 int /*<<< orphan*/  ene_isr ; 
 int /*<<< orphan*/  ene_open ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*) ; 
 int /*<<< orphan*/  ene_set_carrier_report ; 
 int /*<<< orphan*/  ene_set_idle ; 
 int /*<<< orphan*/  ene_set_learning_mode ; 
 int /*<<< orphan*/  ene_set_tx_carrier ; 
 int /*<<< orphan*/  ene_set_tx_duty_cycle ; 
 int /*<<< orphan*/  ene_set_tx_mask ; 
 int /*<<< orphan*/  FUNC4 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ene_device*) ; 
 int /*<<< orphan*/  ene_transmit ; 
 int /*<<< orphan*/  ene_tx_irqsim ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ene_device*) ; 
 struct ene_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int learning_mode_force ; 
 int FUNC9 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pnp_dev*,struct ene_device*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 struct rc_dev* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct rc_dev*) ; 
 int FUNC19 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 
 scalar_t__ FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC23 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int sample_period ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ txsim ; 

__attribute__((used)) static int FUNC26(struct pnp_dev *pnp_dev, const struct pnp_device_id *id)
{
	int error = -ENOMEM;
	struct rc_dev *rdev;
	struct ene_device *dev;

	/* allocate memory */
	dev = FUNC8(sizeof(struct ene_device), GFP_KERNEL);
	rdev = FUNC17(RC_DRIVER_IR_RAW);
	if (!dev || !rdev)
		goto exit_free_dev_rdev;

	/* validate resources */
	error = -ENODEV;

	/* init these to -1, as 0 is valid for both */
	dev->hw_io = -1;
	dev->irq = -1;

	if (!FUNC13(pnp_dev, 0) ||
	    FUNC11(pnp_dev, 0) < ENE_IO_SIZE)
		goto exit_free_dev_rdev;

	if (!FUNC10(pnp_dev, 0))
		goto exit_free_dev_rdev;

	FUNC24(&dev->hw_lock);

	dev->hw_io = FUNC12(pnp_dev, 0);
	dev->irq = FUNC9(pnp_dev, 0);


	FUNC14(pnp_dev, dev);
	dev->pnp_dev = pnp_dev;

	/* don't allow too short/long sample periods */
	if (sample_period < 5 || sample_period > 0x7F)
		sample_period = ENE_DEFAULT_SAMPLE_PERIOD;

	/* detect hardware version and features */
	error = FUNC2(dev);
	if (error)
		goto exit_free_dev_rdev;

	if (!dev->hw_learning_and_tx_capable && txsim) {
		dev->hw_learning_and_tx_capable = true;
		FUNC25(&dev->tx_sim_timer, ene_tx_irqsim, 0);
		FUNC16("Simulation of TX activated\n");
	}

	if (!dev->hw_learning_and_tx_capable)
		learning_mode_force = false;

	rdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	rdev->priv = dev;
	rdev->open = ene_open;
	rdev->close = ene_close;
	rdev->s_idle = ene_set_idle;
	rdev->driver_name = ENE_DRIVER_NAME;
	rdev->map_name = RC_MAP_RC6_MCE;
	rdev->device_name = "ENE eHome Infrared Remote Receiver";

	if (dev->hw_learning_and_tx_capable) {
		rdev->s_learning_mode = ene_set_learning_mode;
		FUNC6(&dev->tx_complete);
		rdev->tx_ir = ene_transmit;
		rdev->s_tx_mask = ene_set_tx_mask;
		rdev->s_tx_carrier = ene_set_tx_carrier;
		rdev->s_tx_duty_cycle = ene_set_tx_duty_cycle;
		rdev->s_carrier_report = ene_set_carrier_report;
		rdev->device_name = "ENE eHome Infrared Remote Transceiver";
	}

	dev->rdev = rdev;

	FUNC3(dev);
	FUNC4(dev);
	FUNC5(dev);

	FUNC0(&pnp_dev->dev, true);
	FUNC1(&pnp_dev->dev, true);

	error = FUNC19(rdev);
	if (error < 0)
		goto exit_free_dev_rdev;

	/* claim the resources */
	error = -EBUSY;
	if (!FUNC23(dev->hw_io, ENE_IO_SIZE, ENE_DRIVER_NAME)) {
		goto exit_unregister_device;
	}

	if (FUNC22(dev->irq, ene_isr,
			IRQF_SHARED, ENE_DRIVER_NAME, (void *)dev)) {
		goto exit_release_hw_io;
	}

	FUNC15("driver has been successfully loaded\n");
	return 0;

exit_release_hw_io:
	FUNC21(dev->hw_io, ENE_IO_SIZE);
exit_unregister_device:
	FUNC20(rdev);
	rdev = NULL;
exit_free_dev_rdev:
	FUNC18(rdev);
	FUNC7(dev);
	return error;
}