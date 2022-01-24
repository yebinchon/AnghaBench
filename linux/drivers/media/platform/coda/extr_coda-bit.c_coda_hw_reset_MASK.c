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
struct coda_dev {TYPE_1__* devtype; int /*<<< orphan*/  rstc; int /*<<< orphan*/  coda_mutex; } ;
struct coda_ctx {struct coda_dev* dev; } ;
struct TYPE_2__ {scalar_t__ product; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODA9_GDI_BUS_CTRL ; 
 int /*<<< orphan*/  CODA9_GDI_BUS_STATUS ; 
 scalar_t__ CODA_960 ; 
 int /*<<< orphan*/  CODA_REG_BIT_BUSY ; 
 unsigned int CODA_REG_BIT_BUSY_FLAG ; 
 int /*<<< orphan*/  CODA_REG_BIT_CODE_RUN ; 
 int /*<<< orphan*/  CODA_REG_BIT_RUN_INDEX ; 
 unsigned int CODA_REG_RUN_ENABLE ; 
 int ENOENT ; 
 int ETIME ; 
 int FUNC0 (struct coda_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct coda_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct coda_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

int FUNC8(struct coda_ctx *ctx)
{
	struct coda_dev *dev = ctx->dev;
	unsigned long timeout;
	unsigned int idx;
	int ret;

	FUNC4(&dev->coda_mutex);

	if (!dev->rstc)
		return -ENOENT;

	idx = FUNC0(dev, CODA_REG_BIT_RUN_INDEX);

	if (dev->devtype->product == CODA_960) {
		timeout = jiffies + FUNC5(100);
		FUNC2(dev, 0x11, CODA9_GDI_BUS_CTRL);
		while (FUNC0(dev, CODA9_GDI_BUS_STATUS) != 0x77) {
			if (FUNC7(jiffies, timeout))
				return -ETIME;
			FUNC3();
		}
	}

	ret = FUNC6(dev->rstc);
	if (ret < 0)
		return ret;

	if (dev->devtype->product == CODA_960)
		FUNC2(dev, 0x00, CODA9_GDI_BUS_CTRL);
	FUNC2(dev, CODA_REG_BIT_BUSY_FLAG, CODA_REG_BIT_BUSY);
	FUNC2(dev, CODA_REG_RUN_ENABLE, CODA_REG_BIT_CODE_RUN);
	ret = FUNC1(dev);
	FUNC2(dev, idx, CODA_REG_BIT_RUN_INDEX);

	return ret;
}