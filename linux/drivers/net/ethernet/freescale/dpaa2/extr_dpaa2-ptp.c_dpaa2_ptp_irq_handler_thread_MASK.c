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
typedef  int u32 ;
struct ptp_qoriq {int /*<<< orphan*/  clock; struct device* dev; } ;
struct ptp_clock_event {int /*<<< orphan*/  type; } ;
struct fsl_mc_device {int /*<<< orphan*/  mc_handle; int /*<<< orphan*/  mc_io; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DPRTC_EVENT_PPS ; 
 int /*<<< orphan*/  DPRTC_IRQ_INDEX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PTP_CLOCK_PPS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ptp_clock_event*) ; 
 struct fsl_mc_device* FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *priv)
{
	struct ptp_qoriq *ptp_qoriq = priv;
	struct ptp_clock_event event;
	struct fsl_mc_device *mc_dev;
	struct device *dev;
	u32 status = 0;
	int err;

	dev = ptp_qoriq->dev;
	mc_dev = FUNC4(dev);

	err = FUNC2(mc_dev->mc_io, 0, mc_dev->mc_handle,
				   DPRTC_IRQ_INDEX, &status);
	if (FUNC5(err)) {
		FUNC0(dev, "dprtc_get_irq_status err %d\n", err);
		return IRQ_NONE;
	}

	if (status & DPRTC_EVENT_PPS) {
		event.type = PTP_CLOCK_PPS;
		FUNC3(ptp_qoriq->clock, &event);
	}

	err = FUNC1(mc_dev->mc_io, 0, mc_dev->mc_handle,
				     DPRTC_IRQ_INDEX, status);
	if (FUNC5(err)) {
		FUNC0(dev, "dprtc_clear_irq_status err %d\n", err);
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}