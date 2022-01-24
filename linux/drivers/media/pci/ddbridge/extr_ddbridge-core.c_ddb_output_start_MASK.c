#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ddb_output {TYPE_4__* dma; TYPE_3__* port; } ;
struct ddb {int dummy; } ;
struct TYPE_10__ {int bufval; int running; int /*<<< orphan*/  lock; scalar_t__ stat; scalar_t__ coff; scalar_t__ cbuf; } ;
struct TYPE_9__ {TYPE_2__** input; struct ddb* dev; } ;
struct TYPE_8__ {TYPE_1__* port; } ;
struct TYPE_7__ {scalar_t__ class; } ;

/* Variables and functions */
 scalar_t__ DDB_PORT_LOOP ; 
 int /*<<< orphan*/  DMA_BASE_READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ddb_output*) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb_output*) ; 
 int /*<<< orphan*/  FUNC5 (struct ddb_output*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ddb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ddb_output *output)
{
	struct ddb *dev = output->port->dev;
	u32 con = 0x11c, con2 = 0;

	FUNC7(&output->dma->lock);
	output->dma->cbuf = 0;
	output->dma->coff = 0;
	output->dma->stat = 0;
	FUNC6(dev, 0, FUNC1(output->dma));

	if (output->port->input[0]->port->class == DDB_PORT_LOOP)
		con = (1UL << 13) | 0x14;
	else
		FUNC5(output, &con, &con2, 0);

	FUNC6(dev, 0, FUNC3(output));
	FUNC6(dev, 2, FUNC3(output));
	FUNC6(dev, 0, FUNC3(output));
	FUNC6(dev, con, FUNC3(output));
	FUNC6(dev, con2, FUNC4(output));

	FUNC6(dev, output->dma->bufval,
		  FUNC2(output->dma));
	FUNC6(dev, 0, FUNC0(output->dma));
	FUNC6(dev, 1, DMA_BASE_READ);
	FUNC6(dev, 7, FUNC1(output->dma));

	FUNC6(dev, con | 1, FUNC3(output));

	output->dma->running = 1;
	FUNC8(&output->dma->lock);
}