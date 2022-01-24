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
struct sh_flctl {scalar_t__ chan_fifo0_rx; int /*<<< orphan*/ * done_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct sh_flctl*,unsigned long*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_flctl*) ; 

__attribute__((used)) static void FUNC5(struct sh_flctl *flctl, int rlen, int offset)
{
	int i, len_4align;
	unsigned long *buf = (unsigned long *)&flctl->done_buff[offset];

	len_4align = (rlen + 3) / 4;

	/* initiate DMA transfer */
	if (flctl->chan_fifo0_rx && rlen >= 32 &&
		FUNC2(flctl, buf, rlen, DMA_FROM_DEVICE) > 0)
			goto convert;	/* DMA success */

	/* do polling transfer */
	for (i = 0; i < len_4align; i++) {
		FUNC4(flctl);
		buf[i] = FUNC3(FUNC0(flctl));
	}

convert:
	for (i = 0; i < len_4align; i++)
		buf[i] = FUNC1(buf[i]);
}