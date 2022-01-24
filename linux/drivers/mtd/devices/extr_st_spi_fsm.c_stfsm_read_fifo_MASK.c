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
typedef  int uint32_t ;
struct stfsm {scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SPI_FAST_SEQ_DATA_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int) ; 
 int FUNC4 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct stfsm *fsm, uint32_t *buf, uint32_t size)
{
	uint32_t remaining = size >> 2;
	uint32_t avail;
	uint32_t words;

	FUNC1(fsm->dev, "Reading %d bytes from FIFO\n", size);

	FUNC0((((uintptr_t)buf) & 0x3) || (size & 0x3));

	while (remaining) {
		for (;;) {
			avail = FUNC4(fsm);
			if (avail)
				break;
			FUNC5(1);
		}
		words = FUNC2(avail, remaining);
		remaining -= words;

		FUNC3(fsm->base + SPI_FAST_SEQ_DATA_REG, buf, words);
		buf += words;
	}
}