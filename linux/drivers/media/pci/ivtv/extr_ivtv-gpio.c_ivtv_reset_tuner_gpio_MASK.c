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
typedef  int u32 ;
struct ivtv {TYPE_1__* card; } ;
struct i2c_algo_bit_data {struct ivtv* data; } ;
struct TYPE_2__ {int xceive_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_OUT ; 
 int XC2028_TUNER_RESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(void *dev, int component, int cmd, int value)
{
	struct i2c_algo_bit_data *algo = dev;
	struct ivtv *itv = algo->data;
	u32 curout;

	if (cmd != XC2028_TUNER_RESET)
		return 0;
	FUNC0("Resetting tuner\n");
	curout = FUNC2(IVTV_REG_GPIO_OUT);
	curout &= ~(1 << itv->card->xceive_pin);
	FUNC4(curout, IVTV_REG_GPIO_OUT);
	FUNC3(FUNC1(1));

	curout |= 1 << itv->card->xceive_pin;
	FUNC4(curout, IVTV_REG_GPIO_OUT);
	FUNC3(FUNC1(1));
	return 0;
}