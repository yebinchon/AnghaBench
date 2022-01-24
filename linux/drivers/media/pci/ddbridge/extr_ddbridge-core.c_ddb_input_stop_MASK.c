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
typedef  int u32 ;
struct ddb_input {TYPE_2__* dma; TYPE_1__* port; } ;
struct ddb {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ running; } ;
struct TYPE_3__ {int /*<<< orphan*/  lnr; struct ddb* dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct ddb_input*) ; 
 int /*<<< orphan*/  FUNC3 (struct ddb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ddb_input *input)
{
	struct ddb *dev = input->port->dev;
	u32 tag = FUNC0(input->port->lnr);

	FUNC4(&input->dma->lock);

	FUNC3(dev, 0, tag | FUNC2(input));

	FUNC3(dev, 0, FUNC1(input->dma));
	input->dma->running = 0;
	FUNC5(&input->dma->lock);
}