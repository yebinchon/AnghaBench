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
typedef  int u16 ;
struct mt9m032 {int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9M032_FORMATTER2 ; 
 int MT9M032_FORMATTER2_DOUT_EN ; 
 int MT9M032_FORMATTER2_PIXCLK_EN ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mt9m032 *sensor, bool streaming)
{
	struct i2c_client *client = FUNC1(&sensor->subdev);
	u16 reg_val =   MT9M032_FORMATTER2_DOUT_EN
		      | 0x0070;  /* parts reserved! */
				 /* possibly for changing to 14-bit mode */

	if (streaming)
		reg_val |= MT9M032_FORMATTER2_PIXCLK_EN;   /* pixclock enable */

	return FUNC0(client, MT9M032_FORMATTER2, reg_val);
}