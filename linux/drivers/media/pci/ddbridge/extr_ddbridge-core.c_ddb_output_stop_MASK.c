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
struct ddb_output {TYPE_2__* dma; TYPE_1__* port; } ;
struct ddb {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ running; } ;
struct TYPE_3__ {struct ddb* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb_output*) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ddb_output *output)
{
	struct ddb *dev = output->port->dev;

	FUNC3(&output->dma->lock);

	FUNC2(dev, 0, FUNC1(output));

	FUNC2(dev, 0, FUNC0(output->dma));
	output->dma->running = 0;
	FUNC4(&output->dma->lock);
}