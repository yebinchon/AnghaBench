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
struct cx23885_tsport {size_t sram_chno; int /*<<< orphan*/  reg_ts_int_stat; int /*<<< orphan*/  slock; int /*<<< orphan*/  mpegq; int /*<<< orphan*/  reg_gpcnt; int /*<<< orphan*/  dma_ctl_val; int /*<<< orphan*/  reg_dma_ctl; struct cx23885_dev* dev; } ;
struct cx23885_dev {int /*<<< orphan*/ * sram_channels; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int VID_BC_MSK_BAD_PKT ; 
 int VID_BC_MSK_OF ; 
 int VID_BC_MSK_OPC_ERR ; 
 int VID_BC_MSK_RISCI1 ; 
 int VID_BC_MSK_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_tsport*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cx23885_tsport *port, u32 status)
{
	struct cx23885_dev *dev = port->dev;
	int handled = 0;
	u32 count;

	if ((status & VID_BC_MSK_OPC_ERR) ||
		(status & VID_BC_MSK_BAD_PKT) ||
		(status & VID_BC_MSK_SYNC) ||
		(status & VID_BC_MSK_OF)) {

		if (status & VID_BC_MSK_OPC_ERR)
			FUNC5(7, " (VID_BC_MSK_OPC_ERR 0x%08x)\n",
				VID_BC_MSK_OPC_ERR);

		if (status & VID_BC_MSK_BAD_PKT)
			FUNC5(7, " (VID_BC_MSK_BAD_PKT 0x%08x)\n",
				VID_BC_MSK_BAD_PKT);

		if (status & VID_BC_MSK_SYNC)
			FUNC5(7, " (VID_BC_MSK_SYNC    0x%08x)\n",
				VID_BC_MSK_SYNC);

		if (status & VID_BC_MSK_OF)
			FUNC5(7, " (VID_BC_MSK_OF      0x%08x)\n",
				VID_BC_MSK_OF);

		FUNC6("%s: mpeg risc op code error\n", dev->name);

		FUNC2(port->reg_dma_ctl, port->dma_ctl_val);
		FUNC0(dev,
			&dev->sram_channels[port->sram_chno]);

	} else if (status & VID_BC_MSK_RISCI1) {

		FUNC5(7, " (RISCI1            0x%08x)\n", VID_BC_MSK_RISCI1);

		FUNC7(&port->slock);
		count = FUNC3(port->reg_gpcnt);
		FUNC1(port, &port->mpegq, count);
		FUNC8(&port->slock);

	}
	if (status) {
		FUNC4(port->reg_ts_int_stat, status);
		handled = 1;
	}

	return handled;
}