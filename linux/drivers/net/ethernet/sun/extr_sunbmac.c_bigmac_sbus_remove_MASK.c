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
struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/ * resource; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct bigmac {int /*<<< orphan*/  bblock_dvma; int /*<<< orphan*/  bmac_block; int /*<<< orphan*/  tregs; int /*<<< orphan*/  bregs; int /*<<< orphan*/  creg; int /*<<< orphan*/  gregs; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMAC_REG_SIZE ; 
 int /*<<< orphan*/  CREG_REG_SIZE ; 
 int /*<<< orphan*/  GLOB_REG_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TCVR_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bigmac* FUNC3 (struct platform_device*) ; 
 struct platform_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	struct bigmac *bp = FUNC3(op);
	struct device *parent = op->dev.parent;
	struct net_device *net_dev = bp->dev;
	struct platform_device *qec_op;

	qec_op = FUNC4(parent);

	FUNC5(net_dev);

	FUNC2(&qec_op->resource[0], bp->gregs, GLOB_REG_SIZE);
	FUNC2(&op->resource[0], bp->creg, CREG_REG_SIZE);
	FUNC2(&op->resource[1], bp->bregs, BMAC_REG_SIZE);
	FUNC2(&op->resource[2], bp->tregs, TCVR_REG_SIZE);
	FUNC0(&op->dev,
			  PAGE_SIZE,
			  bp->bmac_block,
			  bp->bblock_dvma);

	FUNC1(net_dev);

	return 0;
}