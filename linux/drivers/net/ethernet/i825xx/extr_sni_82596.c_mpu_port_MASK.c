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
struct net_device {int dummy; } ;
struct i596_private {int options; int /*<<< orphan*/  mpu_port; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int OPT_MPU_16BIT ; 
 struct i596_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, int c, dma_addr_t x)
{
	struct i596_private *lp = FUNC0(dev);

	u32 v = (u32) (c) | (u32) (x);

	if (lp->options & OPT_MPU_16BIT) {
		FUNC4(v & 0xffff, lp->mpu_port);
		FUNC2();  /* order writes to MPU port */
		FUNC1(1);
		FUNC4(v >> 16, lp->mpu_port);
	} else {
		FUNC3(v, lp->mpu_port);
		FUNC2();  /* order writes to MPU port */
		FUNC1(1);
		FUNC3(v, lp->mpu_port);
	}
}