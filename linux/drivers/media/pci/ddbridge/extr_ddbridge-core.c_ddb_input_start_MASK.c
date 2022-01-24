#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ddb_input {TYPE_2__* dma; TYPE_1__* port; } ;
struct ddb {int dummy; } ;
struct TYPE_6__ {int bufval; int running; int /*<<< orphan*/  lock; scalar_t__ stat; scalar_t__ coff; scalar_t__ cbuf; } ;
struct TYPE_5__ {scalar_t__ type; struct ddb* dev; } ;

/* Variables and functions */
 scalar_t__ DDB_TUNER_DUMMY ; 
 int /*<<< orphan*/  DMA_BASE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ddb_input*) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb_input*) ; 
 int /*<<< orphan*/  FUNC5 (struct ddb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ddb_input *input)
{
	struct ddb *dev = input->port->dev;

	FUNC6(&input->dma->lock);
	input->dma->cbuf = 0;
	input->dma->coff = 0;
	input->dma->stat = 0;
	FUNC5(dev, 0, FUNC1(input->dma));

	FUNC5(dev, 0, FUNC3(input));
	FUNC5(dev, 2, FUNC3(input));
	FUNC5(dev, 0, FUNC3(input));

	FUNC5(dev, input->dma->bufval,
		  FUNC2(input->dma));
	FUNC5(dev, 0, FUNC0(input->dma));
	FUNC5(dev, 1, DMA_BASE_WRITE);
	FUNC5(dev, 3, FUNC1(input->dma));

	FUNC5(dev, 0x09, FUNC3(input));

	if (input->port->type == DDB_TUNER_DUMMY)
		FUNC5(dev, 0x000fff01, FUNC4(input));

	input->dma->running = 1;
	FUNC7(&input->dma->lock);
}