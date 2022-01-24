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
struct TYPE_2__ {int nr_packets; } ;
struct saa7134_dev {TYPE_1__ ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_TS_DMA0 ; 
 int /*<<< orphan*/  SAA7134_TS_DMA1 ; 
 int /*<<< orphan*/  SAA7134_TS_DMA2 ; 
 int /*<<< orphan*/  SAA7134_TS_PARALLEL ; 
 int /*<<< orphan*/  SAA7134_TS_PARALLEL_SERIAL ; 
 int /*<<< orphan*/  SAA7134_TS_SERIAL1 ; 
 int TS_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

int FUNC1(struct saa7134_dev *dev)
{
	/* deactivate TS softreset */
	FUNC0(SAA7134_TS_SERIAL1, 0x00);
	/* TSSOP high active, TSVAL high active, TSLOCK ignored */
	FUNC0(SAA7134_TS_PARALLEL, 0x6c);
	FUNC0(SAA7134_TS_PARALLEL_SERIAL, (TS_PACKET_SIZE-1));
	FUNC0(SAA7134_TS_DMA0, ((dev->ts.nr_packets-1)&0xff));
	FUNC0(SAA7134_TS_DMA1, (((dev->ts.nr_packets-1)>>8)&0xff));
	/* TSNOPIT=0, TSCOLAP=0 */
	FUNC0(SAA7134_TS_DMA2,
		((((dev->ts.nr_packets-1)>>16)&0x3f) | 0x00));

	return 0;
}