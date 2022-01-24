#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct ti_st_plat_data {int /*<<< orphan*/  (* chip_disable ) (struct kim_data_s*) ;} ;
struct kim_data_s {int /*<<< orphan*/  nshutdown; int /*<<< orphan*/  ldisc_installed; TYPE_3__* kim_pdev; scalar_t__ ldisc_install; TYPE_1__* core_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; struct ti_st_plat_data* platform_data; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;

/* Variables and functions */
 long ETIMEDOUT ; 
 int /*<<< orphan*/  GPIO_HIGH ; 
 int /*<<< orphan*/  GPIO_LOW ; 
 int /*<<< orphan*/  LDISC_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kim_data_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 
 long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

long FUNC11(void *kim_data)
{
	long err = 0;
	struct kim_data_s	*kim_gdata = (struct kim_data_s *)kim_data;
	struct ti_st_plat_data	*pdata =
		kim_gdata->kim_pdev->dev.platform_data;
	struct tty_struct	*tty = kim_gdata->core_data->tty;

	FUNC5(&kim_gdata->ldisc_installed);

	if (tty) {	/* can be called before ldisc is installed */
		/* Flush any pending characters in the driver and discipline. */
		FUNC9(tty);
		FUNC8(tty);
	}

	/* send uninstall notification to UIM */
	FUNC4("ldisc_install = 0");
	kim_gdata->ldisc_install = 0;
	FUNC7(&kim_gdata->kim_pdev->dev.kobj, NULL, "install");

	/* wait for ldisc to be un-installed */
	err = FUNC10(
		&kim_gdata->ldisc_installed, FUNC2(LDISC_TIME));
	if (!err) {		/* timeout */
		FUNC3(" timed out waiting for ldisc to be un-installed");
		err = -ETIMEDOUT;
	}

	/* By default configure BT nShutdown to LOW state */
	FUNC0(kim_gdata->nshutdown, GPIO_LOW);
	FUNC1(1);
	FUNC0(kim_gdata->nshutdown, GPIO_HIGH);
	FUNC1(1);
	FUNC0(kim_gdata->nshutdown, GPIO_LOW);

	/* platform specific disable */
	if (pdata->chip_disable)
		pdata->chip_disable(kim_gdata);
	return err;
}