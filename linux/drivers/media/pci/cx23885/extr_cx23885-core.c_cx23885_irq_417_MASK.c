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
struct cx23885_tsport {size_t sram_chno; int /*<<< orphan*/  reg_ts_int_stat; int /*<<< orphan*/  slock; int /*<<< orphan*/  mpegq; int /*<<< orphan*/  dma_ctl_val; int /*<<< orphan*/  reg_dma_ctl; int /*<<< orphan*/  reg_ts_int_msk; int /*<<< orphan*/  reg_gpcnt; } ;
struct cx23885_dev {int /*<<< orphan*/ * sram_channels; int /*<<< orphan*/  name; struct cx23885_tsport ts1; } ;

/* Variables and functions */
 int VID_B_MSK_BAD_PKT ; 
 int VID_B_MSK_OF ; 
 int VID_B_MSK_OPC_ERR ; 
 int VID_B_MSK_RISCI1 ; 
 int VID_B_MSK_SYNC ; 
 int VID_B_MSK_VBI_OF ; 
 int VID_B_MSK_VBI_OPC_ERR ; 
 int VID_B_MSK_VBI_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_tsport*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct cx23885_dev *dev, u32 status)
{
	/* FIXME: port1 assumption here. */
	struct cx23885_tsport *port = &dev->ts1;
	int count = 0;
	int handled = 0;

	if (status == 0)
		return handled;

	count = FUNC4(port->reg_gpcnt);
	FUNC6(7, "status: 0x%08x  mask: 0x%08x count: 0x%x\n",
		status, FUNC4(port->reg_ts_int_msk), count);

	if ((status & VID_B_MSK_BAD_PKT)         ||
		(status & VID_B_MSK_OPC_ERR)     ||
		(status & VID_B_MSK_VBI_OPC_ERR) ||
		(status & VID_B_MSK_SYNC)        ||
		(status & VID_B_MSK_VBI_SYNC)    ||
		(status & VID_B_MSK_OF)          ||
		(status & VID_B_MSK_VBI_OF)) {
		FUNC7("%s: V4L mpeg risc op code error, status = 0x%x\n",
		       dev->name, status);
		if (status & VID_B_MSK_BAD_PKT)
			FUNC6(1, "        VID_B_MSK_BAD_PKT\n");
		if (status & VID_B_MSK_OPC_ERR)
			FUNC6(1, "        VID_B_MSK_OPC_ERR\n");
		if (status & VID_B_MSK_VBI_OPC_ERR)
			FUNC6(1, "        VID_B_MSK_VBI_OPC_ERR\n");
		if (status & VID_B_MSK_SYNC)
			FUNC6(1, "        VID_B_MSK_SYNC\n");
		if (status & VID_B_MSK_VBI_SYNC)
			FUNC6(1, "        VID_B_MSK_VBI_SYNC\n");
		if (status & VID_B_MSK_OF)
			FUNC6(1, "        VID_B_MSK_OF\n");
		if (status & VID_B_MSK_VBI_OF)
			FUNC6(1, "        VID_B_MSK_VBI_OF\n");

		FUNC3(port->reg_dma_ctl, port->dma_ctl_val);
		FUNC1(dev,
			&dev->sram_channels[port->sram_chno]);
		FUNC0(dev);
	} else if (status & VID_B_MSK_RISCI1) {
		FUNC6(7, "        VID_B_MSK_RISCI1\n");
		FUNC8(&port->slock);
		FUNC2(port, &port->mpegq, count);
		FUNC9(&port->slock);
	}
	if (status) {
		FUNC5(port->reg_ts_int_stat, status);
		handled = 1;
	}

	return handled;
}