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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cqspi_st {int /*<<< orphan*/  clk; scalar_t__ rx_chan; TYPE_2__* f_pdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtd; } ;
struct TYPE_4__ {TYPE_1__ nor; scalar_t__ registered; } ;

/* Variables and functions */
 int CQSPI_MAX_CHIPSELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cqspi_st*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cqspi_st* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct cqspi_st *cqspi = FUNC4(pdev);
	int i;

	for (i = 0; i < CQSPI_MAX_CHIPSELECT; i++)
		if (cqspi->f_pdata[i].registered)
			FUNC3(&cqspi->f_pdata[i].nor.mtd);

	FUNC1(cqspi, 0);

	if (cqspi->rx_chan)
		FUNC2(cqspi->rx_chan);

	FUNC0(cqspi->clk);

	FUNC6(&pdev->dev);
	FUNC5(&pdev->dev);

	return 0;
}