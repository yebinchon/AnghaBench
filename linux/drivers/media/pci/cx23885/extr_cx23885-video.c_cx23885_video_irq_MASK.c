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
struct cx23885_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  vidq; int /*<<< orphan*/ * sram_channels; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t SRAM_CH01 ; 
 int /*<<< orphan*/  VID_A_GPCNT ; 
 int /*<<< orphan*/  VID_A_INT_MSK ; 
 int /*<<< orphan*/  VID_A_INT_STAT ; 
 int VID_BC_MSK_OF ; 
 int VID_BC_MSK_OPC_ERR ; 
 int VID_BC_MSK_RISCI1 ; 
 int VID_BC_MSK_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct cx23885_dev *dev, u32 status)
{
	u32 mask, count;
	int handled = 0;

	mask   = FUNC3(VID_A_INT_MSK);
	if (0 == (status & mask))
		return handled;

	FUNC4(VID_A_INT_STAT, status);

	/* risc op code error, fifo overflow or line sync detection error */
	if ((status & VID_BC_MSK_OPC_ERR) ||
		(status & VID_BC_MSK_SYNC) ||
		(status & VID_BC_MSK_OF)) {

		if (status & VID_BC_MSK_OPC_ERR) {
			FUNC5(7, " (VID_BC_MSK_OPC_ERR 0x%08x)\n",
				VID_BC_MSK_OPC_ERR);
			FUNC6("%s: video risc op code error\n",
				dev->name);
			FUNC0(dev,
				&dev->sram_channels[SRAM_CH01]);
		}

		if (status & VID_BC_MSK_SYNC)
			FUNC5(7, " (VID_BC_MSK_SYNC 0x%08x) video lines miss-match\n",
				VID_BC_MSK_SYNC);

		if (status & VID_BC_MSK_OF)
			FUNC5(7, " (VID_BC_MSK_OF 0x%08x) fifo overflow\n",
				VID_BC_MSK_OF);

	}

	/* Video */
	if (status & VID_BC_MSK_RISCI1) {
		FUNC7(&dev->slock);
		count = FUNC3(VID_A_GPCNT);
		FUNC2(dev, &dev->vidq, count);
		FUNC8(&dev->slock);
		handled++;
	}

	/* Allow the VBI framework to process it's payload */
	handled += FUNC1(dev, status);

	return handled;
}