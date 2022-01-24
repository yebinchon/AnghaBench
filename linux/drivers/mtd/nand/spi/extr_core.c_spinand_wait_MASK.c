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
struct spinand_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int STATUS_BUSY ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct spinand_device*,int*) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct spinand_device *spinand, u8 *s)
{
	unsigned long timeo =  jiffies + FUNC0(400);
	u8 status;
	int ret;

	do {
		ret = FUNC1(spinand, &status);
		if (ret)
			return ret;

		if (!(status & STATUS_BUSY))
			goto out;
	} while (FUNC2(jiffies, timeo));

	/*
	 * Extra read, just in case the STATUS_READY bit has changed
	 * since our last check
	 */
	ret = FUNC1(spinand, &status);
	if (ret)
		return ret;

out:
	if (s)
		*s = status;

	return status & STATUS_BUSY ? -ETIMEDOUT : 0;
}