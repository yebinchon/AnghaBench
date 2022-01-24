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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct r852_device {scalar_t__ dma_usable; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_DATALINE ; 
 int R852_DMA_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct r852_device*,int /*<<< orphan*/ *,int) ; 
 struct r852_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct r852_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nand_chip *chip, uint8_t *buf, int len)
{
	struct r852_device *dev = FUNC3(FUNC1(chip));
	uint32_t reg;

	if (dev->card_unstable) {
		/* since we can't signal error here, at least, return
			predictable buffer */
		FUNC0(buf, 0, len);
		return;
	}

	/* special case for whole sector read */
	if (len == R852_DMA_LEN && dev->dma_usable) {
		FUNC2(dev, buf, 1);
		return;
	}

	/* read in dword sized chunks */
	while (len >= 4) {

		reg = FUNC5(dev, R852_DATALINE);
		*buf++ = reg & 0xFF;
		*buf++ = (reg >> 8) & 0xFF;
		*buf++ = (reg >> 16) & 0xFF;
		*buf++ = (reg >> 24) & 0xFF;
		len -= 4;
	}

	/* read the reset by bytes */
	while (len--)
		*buf++ = FUNC4(dev, R852_DATALINE);
}