#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int paddr; scalar_t__ vaddr; } ;
struct TYPE_6__ {int paddr; } ;
struct TYPE_5__ {int paddr; } ;
struct coda_dev {int /*<<< orphan*/  clk_per; int /*<<< orphan*/  clk_ahb; TYPE_4__* devtype; TYPE_3__ codebuf; TYPE_2__ workbuf; TYPE_1__ tempbuf; int /*<<< orphan*/  rstc; } ;
struct TYPE_8__ {int product; } ;

/* Variables and functions */
 scalar_t__ CODA7_REG_BIT_AXI_SRAM_USE ; 
 int CODA7_STREAM_BUF_PIC_FLUSH ; 
 int CODA9_FRAME_ENABLE_BWB ; 
 int CODADX6_STREAM_BUF_PIC_FLUSH ; 
 int CODA_7541 ; 
 int CODA_960 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  CODA_DX6 128 
 int CODA_HX4 ; 
 int CODA_INT_INTERRUPT_ENABLE ; 
 int CODA_ISRAM_SIZE ; 
 scalar_t__ CODA_REG_BIT_BIT_STREAM_PARAM ; 
 scalar_t__ CODA_REG_BIT_CODE_BUF_ADDR ; 
 scalar_t__ CODA_REG_BIT_CODE_DOWN ; 
 scalar_t__ CODA_REG_BIT_CODE_RESET ; 
 scalar_t__ CODA_REG_BIT_CODE_RUN ; 
 scalar_t__ CODA_REG_BIT_FRAME_MEM_CTRL ; 
 scalar_t__ CODA_REG_BIT_INT_ENABLE ; 
 scalar_t__ CODA_REG_BIT_STREAM_CTRL ; 
 scalar_t__ CODA_REG_BIT_TEMP_BUF_ADDR ; 
 scalar_t__ CODA_REG_BIT_WORK_BUF_ADDR ; 
 int CODA_REG_RESET_ENABLE ; 
 int CODA_REG_RUN_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct coda_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct coda_dev*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct coda_dev *dev)
{
	u32 data;
	u16 *p;
	int i, ret;

	ret = FUNC3(dev->clk_per);
	if (ret)
		goto err_clk_per;

	ret = FUNC3(dev->clk_ahb);
	if (ret)
		goto err_clk_ahb;

	FUNC6(dev->rstc);

	/*
	 * Copy the first CODA_ISRAM_SIZE in the internal SRAM.
	 * The 16-bit chars in the code buffer are in memory access
	 * order, re-sort them to CODA order for register download.
	 * Data in this SRAM survives a reboot.
	 */
	p = (u16 *)dev->codebuf.vaddr;
	if (dev->devtype->product == CODA_DX6) {
		for (i = 0; i < (CODA_ISRAM_SIZE / 2); i++)  {
			data = FUNC0(i) |
				FUNC1(p[i ^ 1]);
			FUNC5(dev, data, CODA_REG_BIT_CODE_DOWN);
		}
	} else {
		for (i = 0; i < (CODA_ISRAM_SIZE / 2); i++) {
			data = FUNC0(i) |
				FUNC1(p[FUNC7(i, 4) +
							3 - (i % 4)]);
			FUNC5(dev, data, CODA_REG_BIT_CODE_DOWN);
		}
	}

	/* Clear registers */
	for (i = 0; i < 64; i++)
		FUNC5(dev, 0, CODA_REG_BIT_CODE_BUF_ADDR + i * 4);

	/* Tell the BIT where to find everything it needs */
	if (dev->devtype->product == CODA_960 ||
	    dev->devtype->product == CODA_7541 ||
	    dev->devtype->product == CODA_HX4) {
		FUNC5(dev, dev->tempbuf.paddr,
				CODA_REG_BIT_TEMP_BUF_ADDR);
		FUNC5(dev, 0, CODA_REG_BIT_BIT_STREAM_PARAM);
	} else {
		FUNC5(dev, dev->workbuf.paddr,
			      CODA_REG_BIT_WORK_BUF_ADDR);
	}
	FUNC5(dev, dev->codebuf.paddr,
		      CODA_REG_BIT_CODE_BUF_ADDR);
	FUNC5(dev, 0, CODA_REG_BIT_CODE_RUN);

	/* Set default values */
	switch (dev->devtype->product) {
	case CODA_DX6:
		FUNC5(dev, CODADX6_STREAM_BUF_PIC_FLUSH,
			   CODA_REG_BIT_STREAM_CTRL);
		break;
	default:
		FUNC5(dev, CODA7_STREAM_BUF_PIC_FLUSH,
			   CODA_REG_BIT_STREAM_CTRL);
	}
	if (dev->devtype->product == CODA_960)
		FUNC5(dev, CODA9_FRAME_ENABLE_BWB,
				CODA_REG_BIT_FRAME_MEM_CTRL);
	else
		FUNC5(dev, 0, CODA_REG_BIT_FRAME_MEM_CTRL);

	if (dev->devtype->product != CODA_DX6)
		FUNC5(dev, 0, CODA7_REG_BIT_AXI_SRAM_USE);

	FUNC5(dev, CODA_INT_INTERRUPT_ENABLE,
		      CODA_REG_BIT_INT_ENABLE);

	/* Reset VPU and start processor */
	data = FUNC4(dev, CODA_REG_BIT_CODE_RESET);
	data |= CODA_REG_RESET_ENABLE;
	FUNC5(dev, data, CODA_REG_BIT_CODE_RESET);
	FUNC8(10);
	data &= ~CODA_REG_RESET_ENABLE;
	FUNC5(dev, data, CODA_REG_BIT_CODE_RESET);
	FUNC5(dev, CODA_REG_RUN_ENABLE, CODA_REG_BIT_CODE_RUN);

	FUNC2(dev->clk_ahb);
	FUNC2(dev->clk_per);

	return 0;

err_clk_ahb:
	FUNC2(dev->clk_per);
err_clk_per:
	return ret;
}