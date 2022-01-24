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
typedef  int /*<<< orphan*/  u32 ;
struct smi_rc {int dummy; } ;
struct smi_port {int dummy; } ;
struct smi_dev {TYPE_1__* info; struct smi_rc ir; struct smi_port* ts_port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ ts_1; scalar_t__ ts_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MSI_INT_STATUS ; 
 scalar_t__ FUNC1 (struct smi_rc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct smi_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct smi_dev *dev = dev_id;
	struct smi_port *port0 = &dev->ts_port[0];
	struct smi_port *port1 = &dev->ts_port[1];
	struct smi_rc *ir = &dev->ir;
	int handled = 0;

	u32 intr_status = FUNC3(MSI_INT_STATUS);

	/* ts0 interrupt.*/
	if (dev->info->ts_0)
		handled += FUNC2(port0, intr_status);

	/* ts1 interrupt.*/
	if (dev->info->ts_1)
		handled += FUNC2(port1, intr_status);

	/* ir interrupt.*/
	handled += FUNC1(ir, intr_status);

	return FUNC0(handled);
}