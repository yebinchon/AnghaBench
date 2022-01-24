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
struct bttv {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  BT848_ADC ; 
 int BT848_ADC_AGC_EN ; 
 int BT848_ADC_RESERVED ; 
 int /*<<< orphan*/  BT848_GPIO_DMA_CTL ; 
 int BT848_GPIO_DMA_CTL_GPCLKMODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bttv*,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ bttv_gpio ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct bttv *btv)
{
	static int vals[] = { 0x08, 0x09, 0x0a, 0x0b, 0x0d, 0x0d, 0x01, 0x02,
			      0x03, 0x04, 0x05, 0x06, 0x00 };
	unsigned int i;
	int tmp;
	u32 val;

	/* Initialise GPIO-connevted stuff */
	FUNC7(0xffffff, (1<<13));
	FUNC8(0);
	FUNC10(3);
	FUNC8(1<<13);
	/* GPIO inputs are pulled up, so no need to drive
	 * reset pin any longer */
	FUNC6(0xffffff, 0);
	if (bttv_gpio)
		FUNC4(btv,"pxc200");

	/*  we could/should try and reset/control the AD pots? but
	    right now  we simply  turned off the crushing.  Without
	    this the AGC drifts drifts
	    remember the EN is reverse logic -->
	    setting BT848_ADC_AGC_EN disable the AGC
	    tboult@eecs.lehigh.edu
	*/

	FUNC5(BT848_ADC_RESERVED|BT848_ADC_AGC_EN, BT848_ADC);

	/*	Initialise MAX517 DAC */
	FUNC9("Setting DAC reference voltage level ...\n");
	FUNC3(btv,0x5E,0,0x80,1);

	/*	Initialise 12C508 PIC */
	/*	The I2CWrite and I2CRead commands are actually to the
	 *	same chips - but the R/W bit is included in the address
	 *	argument so the numbers are different */


	FUNC9("Initialising 12C508 PIC chip ...\n");

	/* First of all, enable the clock line. This is used in the PXC200-F */
	val = FUNC1(BT848_GPIO_DMA_CTL);
	val |= BT848_GPIO_DMA_CTL_GPCLKMODE;
	FUNC5(val, BT848_GPIO_DMA_CTL);

	/* Then, push to 0 the reset pin long enough to reset the *
	 * device same as above for the reset line, but not the same
	 * value sent to the GPIO-connected stuff
	 * which one is the good one? */
	FUNC7(0xffffff,(1<<2));
	FUNC8(0);
	FUNC10(10);
	FUNC8(1<<2);

	for (i = 0; i < FUNC0(vals); i++) {
		tmp=FUNC3(btv,0x1E,0,vals[i],1);
		if (tmp != -1) {
			FUNC9("I2C Write(%2.2x) = %i\nI2C Read () = %2.2x\n\n",
			       vals[i],tmp,FUNC2(btv,0x1F,NULL));
		}
	}

	FUNC9("PXC200 Initialised\n");
}