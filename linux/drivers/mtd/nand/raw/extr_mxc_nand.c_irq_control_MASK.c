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
struct mxc_nand_host {TYPE_1__* devtype_data; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_control ) (struct mxc_nand_host*,int) ;scalar_t__ irqpending_quirk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mxc_nand_host*,int) ; 

__attribute__((used)) static void FUNC3(struct mxc_nand_host *host, int activate)
{
	if (host->devtype_data->irqpending_quirk) {
		if (activate)
			FUNC1(host->irq);
		else
			FUNC0(host->irq);
	} else {
		host->devtype_data->irq_control(host, activate);
	}
}