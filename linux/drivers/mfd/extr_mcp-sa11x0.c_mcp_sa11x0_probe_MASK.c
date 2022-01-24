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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mcp_sa11x0 {int mccr0; int mccr1; void* base0; void* base1; } ;
struct mcp_plat_data {int sclk_rate; int mccr0; int mccr1; int /*<<< orphan*/  codec_pdata; } ;
struct mcp {int sclk_rate; int rw_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct mcp_sa11x0*) ; 
 int /*<<< orphan*/  FUNC1 (struct mcp_sa11x0*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcp_sa11x0*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct mcp_plat_data* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (struct mcp*,int /*<<< orphan*/ ) ; 
 struct mcp* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mcp*) ; 
 int /*<<< orphan*/  mcp_sa11x0 ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct mcp*) ; 
 struct mcp_sa11x0* FUNC11 (struct mcp*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *dev)
{
	struct mcp_plat_data *data = FUNC3(&dev->dev);
	struct resource *mem0, *mem1;
	struct mcp_sa11x0 *m;
	struct mcp *mcp;
	int ret;

	if (!data)
		return -ENODEV;

	mem0 = FUNC9(dev, IORESOURCE_MEM, 0);
	mem1 = FUNC9(dev, IORESOURCE_MEM, 1);
	if (!mem0 || !mem1)
		return -ENXIO;

	if (!FUNC13(mem0->start, FUNC14(mem0),
				DRIVER_NAME)) {
		ret = -EBUSY;
		goto err_mem0;
	}

	if (!FUNC13(mem1->start, FUNC14(mem1),
				DRIVER_NAME)) {
		ret = -EBUSY;
		goto err_mem1;
	}

	mcp = FUNC7(&dev->dev, sizeof(struct mcp_sa11x0));
	if (!mcp) {
		ret = -ENOMEM;
		goto err_alloc;
	}

	mcp->owner		= THIS_MODULE;
	mcp->ops		= &mcp_sa11x0;
	mcp->sclk_rate		= data->sclk_rate;

	m = FUNC11(mcp);
	m->mccr0 = data->mccr0 | 0x7f7f;
	m->mccr1 = data->mccr1;

	m->base0 = FUNC4(mem0->start, FUNC14(mem0));
	m->base1 = FUNC4(mem1->start, FUNC14(mem1));
	if (!m->base0 || !m->base1) {
		ret = -ENOMEM;
		goto err_ioremap;
	}

	FUNC10(dev, mcp);

	/*
	 * Initialise device.  Note that we initially
	 * set the sampling rate to minimum.
	 */
	FUNC15(-1, FUNC2(m));
	FUNC15(m->mccr1, FUNC1(m));
	FUNC15(m->mccr0, FUNC0(m));

	/*
	 * Calculate the read/write timeout (us) from the bit clock
	 * rate.  This is the period for 3 64-bit frames.  Always
	 * round this time up.
	 */
	mcp->rw_timeout = (64 * 3 * 1000000 + mcp->sclk_rate - 1) /
			  mcp->sclk_rate;

	ret = FUNC6(mcp, data->codec_pdata);
	if (ret == 0)
		return 0;

 err_ioremap:
	FUNC5(m->base1);
	FUNC5(m->base0);
	FUNC8(mcp);
 err_alloc:
	FUNC12(mem1->start, FUNC14(mem1));
 err_mem1:
	FUNC12(mem0->start, FUNC14(mem0));
 err_mem0:
	return ret;
}