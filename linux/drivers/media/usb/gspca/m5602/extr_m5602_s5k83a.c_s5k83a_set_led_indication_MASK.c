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
typedef  int u8 ;
struct sd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M5602_XB_GPIO_DAT ; 
 int S5K83A_GPIO_LED_MASK ; 
 int FUNC0 (struct sd*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct sd *sd, u8 val)
{
	int err = 0;
	u8 data[1];

	err = FUNC0(sd, M5602_XB_GPIO_DAT, data);
	if (err < 0)
		return err;

	if (val)
		data[0] = data[0] | S5K83A_GPIO_LED_MASK;
	else
		data[0] = data[0] & ~S5K83A_GPIO_LED_MASK;

	err = FUNC1(sd, M5602_XB_GPIO_DAT, data[0]);

	return err;
}