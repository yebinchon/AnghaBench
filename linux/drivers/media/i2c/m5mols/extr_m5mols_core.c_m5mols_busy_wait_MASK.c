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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int M5MOLS_BUSY_WAIT_DEF_TIMEOUT ; 
 int M5MOLS_I2C_RDY_WAIT_FL ; 
 unsigned long jiffies ; 
 int FUNC0 (struct v4l2_subdev*,int,int*) ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(struct v4l2_subdev *sd, u32 reg, u32 value, u32 mask,
		     int timeout)
{
	int ms = timeout < 0 ? M5MOLS_BUSY_WAIT_DEF_TIMEOUT : timeout;
	unsigned long end = jiffies + FUNC1(ms);
	u8 status;

	do {
		int ret = FUNC0(sd, reg, &status);

		if (ret < 0 && !(mask & M5MOLS_I2C_RDY_WAIT_FL))
			return ret;
		if (!ret && (status & mask & 0xff) == (value & 0xff))
			return 0;
		FUNC3(100, 250);
	} while (ms > 0 && FUNC2(end));

	return -EBUSY;
}