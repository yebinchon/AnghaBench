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
typedef  int u32 ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int MC417_MICS ; 
 int MC417_MIDATA ; 
 int MC417_MIRD ; 
 int MC417_MIRDY ; 
 int MC417_MIWR ; 
 int /*<<< orphan*/  MC417_OEN ; 
 int /*<<< orphan*/  MC417_RWD ; 
 int MCI_MEMORY_ADDRESS_BYTE0 ; 
 int MCI_MEMORY_ADDRESS_BYTE1 ; 
 int MCI_MEMORY_ADDRESS_BYTE2 ; 
 int MCI_MEMORY_DATA_BYTE0 ; 
 int MCI_MEMORY_DATA_BYTE1 ; 
 int MCI_MEMORY_DATA_BYTE2 ; 
 int MCI_MEMORY_DATA_BYTE3 ; 
 int MCI_MODE_MEMORY_READ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cx23885_dev*) ; 

int FUNC3(struct cx23885_dev *dev, u32 address, u32 *value)
{
	int retval;
	u32 regval;
	u32 tempval;
	u32 dataval;

	/* Enable MC417 GPIO outputs except for MC417_MIRDY,
	 * which is an input.
	 */
	FUNC1(MC417_OEN, MC417_MIRDY);

	/* Write address byte 2 */
	regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_ADDRESS_BYTE2 |
		MCI_MODE_MEMORY_READ | ((address >> 16) & 0x3F);
	FUNC1(MC417_RWD, regval);
	regval |= MC417_MICS | MC417_MIWR;
	FUNC1(MC417_RWD, regval);

	/* Write address byte 1 */
	regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_ADDRESS_BYTE1 |
		((address >> 8) & 0xFF);
	FUNC1(MC417_RWD, regval);
	regval |= MC417_MICS | MC417_MIWR;
	FUNC1(MC417_RWD, regval);

	/* Write address byte 0 */
	regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_ADDRESS_BYTE0 |
		(address & 0xFF);
	FUNC1(MC417_RWD, regval);
	regval |= MC417_MICS | MC417_MIWR;
	FUNC1(MC417_RWD, regval);

	/* Wait for the trans to complete (MC417_MIRDY asserted). */
	retval = FUNC2(dev);

	/* switch the DAT0-7 GPIO[10:3] to input mode */
	FUNC1(MC417_OEN, MC417_MIRDY | MC417_MIDATA);

	/* Read data byte 3 */
	regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE3;
	FUNC1(MC417_RWD, regval);

	/* Transition RD to effect read transaction across bus. */
	regval = MC417_MIWR | MC417_MIRDY | MCI_MEMORY_DATA_BYTE3;
	FUNC1(MC417_RWD, regval);

	/* Collect byte */
	tempval = FUNC0(MC417_RWD);
	dataval = ((tempval & 0x000000FF) << 24);

	/* Bring CS and RD high. */
	regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
	FUNC1(MC417_RWD, regval);

	/* Read data byte 2 */
	regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE2;
	FUNC1(MC417_RWD, regval);
	regval = MC417_MIWR | MC417_MIRDY | MCI_MEMORY_DATA_BYTE2;
	FUNC1(MC417_RWD, regval);
	tempval = FUNC0(MC417_RWD);
	dataval |= ((tempval & 0x000000FF) << 16);
	regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
	FUNC1(MC417_RWD, regval);

	/* Read data byte 1 */
	regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE1;
	FUNC1(MC417_RWD, regval);
	regval = MC417_MIWR | MC417_MIRDY | MCI_MEMORY_DATA_BYTE1;
	FUNC1(MC417_RWD, regval);
	tempval = FUNC0(MC417_RWD);
	dataval |= ((tempval & 0x000000FF) << 8);
	regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
	FUNC1(MC417_RWD, regval);

	/* Read data byte 0 */
	regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE0;
	FUNC1(MC417_RWD, regval);
	regval = MC417_MIWR | MC417_MIRDY | MCI_MEMORY_DATA_BYTE0;
	FUNC1(MC417_RWD, regval);
	tempval = FUNC0(MC417_RWD);
	dataval |= (tempval & 0x000000FF);
	regval = MC417_MIWR | MC417_MIRD | MC417_MICS | MC417_MIRDY;
	FUNC1(MC417_RWD, regval);

	*value  = dataval;

	return retval;
}