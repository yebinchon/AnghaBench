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
struct smssdio_device {int /*<<< orphan*/  coredev; struct sdio_func* func; } ;
struct smsdevice_params_t {int buffer_size; int num_buffers; scalar_t__ device_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  sendrequest_handler; int /*<<< orphan*/  devpath; struct smssdio_device* context; int /*<<< orphan*/ * device; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct sdio_device_id {int driver_data; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_DMA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SMSSDIO_BLOCK_SIZE ; 
 int /*<<< orphan*/  SMS_DEVICE_FAMILY2 ; 
 scalar_t__ SMS_STELLAR ; 
 int /*<<< orphan*/  FUNC0 (struct smssdio_device*) ; 
 struct smssdio_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsdevice_params_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int FUNC4 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int FUNC6 (struct sdio_func*) ; 
 char* FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 int FUNC10 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*,struct smssdio_device*) ; 
 TYPE_1__* FUNC12 (int) ; 
 int FUNC13 (struct smsdevice_params_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smssdio_interrupt ; 
 int /*<<< orphan*/  smssdio_sendrequest ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC18(struct sdio_func *func,
			 const struct sdio_device_id *id)
{
	int ret;

	int board_id;
	struct smssdio_device *smsdev;
	struct smsdevice_params_t params;

	board_id = id->driver_data;

	smsdev = FUNC1(sizeof(struct smssdio_device), GFP_KERNEL);
	if (!smsdev)
		return -ENOMEM;

	smsdev->func = func;

	FUNC2(&params, 0, sizeof(struct smsdevice_params_t));

	params.device = &func->dev;
	params.buffer_size = 0x5000;	/* ?? */
	params.num_buffers = 22;	/* ?? */
	params.context = smsdev;

	FUNC17(params.devpath, sizeof(params.devpath),
		 "sdio\\%s", FUNC7(func));

	params.sendrequest_handler = smssdio_sendrequest;

	params.device_type = FUNC12(board_id)->type;

	if (params.device_type != SMS_STELLAR)
		params.flags |= SMS_DEVICE_FAMILY2;
	else {
		/*
		 * FIXME: Stellar needs special handling...
		 */
		ret = -ENODEV;
		goto free;
	}

	ret = FUNC13(&params, &smsdev->coredev, GFP_DMA, NULL);
	if (ret < 0)
		goto free;

	FUNC14(smsdev->coredev, board_id);

	FUNC3(func);

	ret = FUNC6(func);
	if (ret)
		goto release;

	ret = FUNC10(func, SMSSDIO_BLOCK_SIZE);
	if (ret)
		goto disable;

	ret = FUNC4(func, smssdio_interrupt);
	if (ret)
		goto disable;

	FUNC11(func, smsdev);

	FUNC8(func);

	ret = FUNC15(smsdev->coredev);
	if (ret < 0)
		goto reclaim;

	return 0;

reclaim:
	FUNC3(func);
	FUNC9(func);
disable:
	FUNC5(func);
release:
	FUNC8(func);
	FUNC16(smsdev->coredev);
free:
	FUNC0(smsdev);

	return ret;
}