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
struct cx23885_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GP0_IO ; 
 int /*<<< orphan*/  MC417_RWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cx23885_dev*) ; 
 scalar_t__ FUNC2 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct cx23885_dev *dev, u32 mask)
{
	if (mask & 0x7)
		FUNC0(GP0_IO, mask & 0x7);

	if (mask & 0x0007fff8) {
		if (FUNC1(dev) || FUNC2(dev))
			FUNC3("%s: Setting GPIO on encoder ports\n",
				dev->name);
		FUNC0(MC417_RWD, (mask & 0x0007fff8) >> 3);
	}

	/* TODO: 23-19 */
	if (mask & 0x00f80000)
		FUNC4("%s: Unsupported\n", dev->name);
}