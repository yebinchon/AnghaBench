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
typedef  int /*<<< orphan*/  u64 ;
struct sja1105_regs {int /*<<< orphan*/  ptptsclk; } ;
struct sja1105_private {TYPE_2__* ds; TYPE_1__* info; } ;
struct cyclecounter {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct sja1105_regs* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_READ ; 
 struct sja1105_private* FUNC0 (struct cyclecounter const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct sja1105_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u64 FUNC3(const struct cyclecounter *cc)
{
	struct sja1105_private *priv = FUNC0(cc);
	const struct sja1105_regs *regs = priv->info->regs;
	u64 ptptsclk = 0;
	int rc;

	rc = FUNC2(priv, SPI_READ, regs->ptptsclk,
				  &ptptsclk, 8);
	if (rc < 0)
		FUNC1(priv->ds->dev,
				    "failed to read ptp cycle counter: %d\n",
				    rc);
	return ptptsclk;
}