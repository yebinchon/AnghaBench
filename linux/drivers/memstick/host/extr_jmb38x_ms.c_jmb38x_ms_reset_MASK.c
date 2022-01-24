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
struct jmb38x_ms_host {scalar_t__ addr; TYPE_2__* chip; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ HOST_CONTROL ; 
 int HOST_CONTROL_CLOCK_EN ; 
 int HOST_CONTROL_RESET ; 
 int HOST_CONTROL_RESET_REQ ; 
 scalar_t__ INT_SIGNAL_ENABLE ; 
 int INT_STATUS_ALL ; 
 scalar_t__ INT_STATUS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct jmb38x_ms_host *host)
{
	int cnt;

	FUNC3(HOST_CONTROL_RESET_REQ | HOST_CONTROL_CLOCK_EN
	       | FUNC2(host->addr + HOST_CONTROL),
	       host->addr + HOST_CONTROL);

	for (cnt = 0; cnt < 20; ++cnt) {
		if (!(HOST_CONTROL_RESET_REQ
		      & FUNC2(host->addr + HOST_CONTROL)))
			goto reset_next;

		FUNC1(20);
	}
	FUNC0(&host->chip->pdev->dev, "reset_req timeout\n");

reset_next:
	FUNC3(HOST_CONTROL_RESET | HOST_CONTROL_CLOCK_EN
	       | FUNC2(host->addr + HOST_CONTROL),
	       host->addr + HOST_CONTROL);

	for (cnt = 0; cnt < 20; ++cnt) {
		if (!(HOST_CONTROL_RESET
		      & FUNC2(host->addr + HOST_CONTROL)))
			goto reset_ok;

		FUNC1(20);
	}
	FUNC0(&host->chip->pdev->dev, "reset timeout\n");
	return -EIO;

reset_ok:
	FUNC3(INT_STATUS_ALL, host->addr + INT_SIGNAL_ENABLE);
	FUNC3(INT_STATUS_ALL, host->addr + INT_STATUS_ENABLE);
	return 0;
}