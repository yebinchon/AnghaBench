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
struct ddb_input {int nr; TYPE_2__* redo; struct ddb_dma* dma; TYPE_1__* port; } ;
struct ddb_dvb {int /*<<< orphan*/  demux; } ;
struct ddb_dma {int cbuf; int stat; int ctrl; int size; int num; int /*<<< orphan*/ * vbuf; int /*<<< orphan*/ * pbuf; } ;
struct ddb {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct ddb_dma* dma; } ;
struct TYPE_3__ {struct ddb* dev; struct ddb_dvb* dvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddb_dma*) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb_dma*) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb_dma*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ alt_dma ; 
 int /*<<< orphan*/  FUNC3 (struct ddb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct ddb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ddb_input *input,
			    struct ddb_input *input2)
{
	struct ddb_dvb *dvb = &input2->port->dvb[input2->nr & 1];
	struct ddb_dma *dma, *dma2;
	struct ddb *dev = input->port->dev;
	int ack = 1;

	dma = input->dma;
	dma2 = input->dma;
	/*
	 * if there also is an output connected, do not ACK.
	 * input_write_output will ACK.
	 */
	if (input->redo) {
		dma2 = input->redo->dma;
		ack = 0;
	}
	while (dma->cbuf != ((dma->stat >> 11) & 0x1f) ||
	       (4 & dma->ctrl)) {
		if (4 & dma->ctrl) {
			/* dev_err(dev->dev, "Overflow dma %d\n", dma->nr); */
			ack = 1;
		}
		if (alt_dma)
			FUNC4(dev->dev, dma2->pbuf[dma->cbuf],
						dma2->size, DMA_FROM_DEVICE);
		FUNC5(&dvb->demux,
					 dma2->vbuf[dma->cbuf],
					 dma2->size / 188);
		dma->cbuf = (dma->cbuf + 1) % dma2->num;
		if (ack)
			FUNC3(dev, (dma->cbuf << 11),
				  FUNC0(dma));
		dma->stat = FUNC6(dev, FUNC2(dma));
		dma->ctrl = FUNC6(dev, FUNC1(dma));
	}
}