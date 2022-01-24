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
struct sunqe_buffers {int dummy; } ;
struct sunqe {int /*<<< orphan*/  buffers_dvma; int /*<<< orphan*/  buffers; int /*<<< orphan*/  qblock_dvma; int /*<<< orphan*/  qe_block; int /*<<< orphan*/  mregs; int /*<<< orphan*/  qcregs; struct net_device* dev; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREG_REG_SIZE ; 
 int /*<<< orphan*/  MREGS_REG_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sunqe* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct sunqe *qp = FUNC3(op);
	struct net_device *net_dev = qp->dev;

	FUNC4(net_dev);

	FUNC2(&op->resource[0], qp->qcregs, CREG_REG_SIZE);
	FUNC2(&op->resource[1], qp->mregs, MREGS_REG_SIZE);
	FUNC0(&op->dev, PAGE_SIZE,
			  qp->qe_block, qp->qblock_dvma);
	FUNC0(&op->dev, sizeof(struct sunqe_buffers),
			  qp->buffers, qp->buffers_dvma);

	FUNC1(net_dev);

	return 0;
}