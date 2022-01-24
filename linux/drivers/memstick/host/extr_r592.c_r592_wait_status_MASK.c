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
struct r592_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ETIME ; 
 int /*<<< orphan*/  R592_STATUS ; 
 int R592_STATUS_RECV_ERR ; 
 int R592_STATUS_SEND_ERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (struct r592_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct r592_device *dev, u32 mask, u32 wanted_mask)
{
	unsigned long timeout = jiffies + FUNC1(1000);
	u32 reg = FUNC2(dev, R592_STATUS);

	if ((reg & mask) == wanted_mask)
		return 0;

	while (FUNC3(jiffies, timeout)) {

		reg = FUNC2(dev, R592_STATUS);

		if ((reg & mask) == wanted_mask)
			return 0;

		if (reg & (R592_STATUS_SEND_ERR | R592_STATUS_RECV_ERR))
			return -EIO;

		FUNC0();
	}
	return -ETIME;
}