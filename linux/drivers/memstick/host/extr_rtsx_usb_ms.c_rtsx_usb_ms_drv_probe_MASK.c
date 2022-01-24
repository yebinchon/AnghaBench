#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtsx_usb_ms {int /*<<< orphan*/  poll_card; int /*<<< orphan*/  handle_req; int /*<<< orphan*/  host_mutex; int /*<<< orphan*/  power_mode; struct platform_device* pdev; struct memstick_host* msh; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct memstick_host {int /*<<< orphan*/  caps; int /*<<< orphan*/  set_param; int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMSTICK_CAP_PAR4 ; 
 int /*<<< orphan*/  MEMSTICK_POWER_OFF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (struct memstick_host*) ; 
 struct memstick_host* FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct memstick_host*) ; 
 struct rtsx_usb_ms* FUNC6 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_usb_ms*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rtsx_usb_ms*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtsx_usb_ms_handle_req ; 
 int /*<<< orphan*/  rtsx_usb_ms_poll_card ; 
 int /*<<< orphan*/  rtsx_usb_ms_request ; 
 int /*<<< orphan*/  rtsx_usb_ms_set_param ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct rtsx_ucr* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct memstick_host *msh;
	struct rtsx_usb_ms *host;
	struct rtsx_ucr *ucr;
	int err;

	ucr = FUNC17(FUNC16(pdev->dev.parent));
	if (!ucr)
		return -ENXIO;

	FUNC2(&(pdev->dev),
			"Realtek USB Memstick controller found\n");

	msh = FUNC4(sizeof(*host), &pdev->dev);
	if (!msh)
		return -ENOMEM;

	host = FUNC6(msh);
	host->ucr = ucr;
	host->msh = msh;
	host->pdev = pdev;
	host->power_mode = MEMSTICK_POWER_OFF;
	FUNC9(pdev, host);

	FUNC8(&host->host_mutex);
	FUNC1(&host->handle_req, rtsx_usb_ms_handle_req);

	FUNC0(&host->poll_card, rtsx_usb_ms_poll_card);

	msh->request = rtsx_usb_ms_request;
	msh->set_param = rtsx_usb_ms_set_param;
	msh->caps = MEMSTICK_CAP_PAR4;

	FUNC12(FUNC7(host));
	FUNC15(FUNC7(host));
	FUNC11(FUNC7(host));

	err = FUNC3(msh);
	if (err)
		goto err_out;

	FUNC13(FUNC7(host));

	return 0;
err_out:
	FUNC5(msh);
	FUNC10(FUNC7(host));
	FUNC14(FUNC7(host));
	return err;
}