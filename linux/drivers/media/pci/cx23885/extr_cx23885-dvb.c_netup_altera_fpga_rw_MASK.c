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
typedef  int uint32_t ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int ALT_AD_RG ; 
 int ALT_CS ; 
 int ALT_DATA ; 
 int ALT_RD ; 
 int ALT_RDY ; 
 int ALT_WR ; 
 int /*<<< orphan*/  MC417_OEN ; 
 int /*<<< orphan*/  MC417_RWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void *device, int flag, int data, int read)
{
	struct cx23885_dev *dev = (struct cx23885_dev *)device;
	unsigned long timeout = jiffies + FUNC4(1);
	uint32_t mem = 0;

	mem = FUNC1(MC417_RWD);
	if (read)
		FUNC2(MC417_OEN, ALT_DATA);
	else {
		FUNC0(MC417_OEN, ALT_DATA);/* D0-D7 out */
		mem &= ~ALT_DATA;
		mem |= (data & ALT_DATA);
	}

	if (flag)
		mem |= ALT_AD_RG;
	else
		mem &= ~ALT_AD_RG;

	mem &= ~ALT_CS;
	if (read)
		mem = (mem & ~ALT_RD) | ALT_WR;
	else
		mem = (mem & ~ALT_WR) | ALT_RD;

	FUNC3(MC417_RWD, mem);  /* start RW cycle */

	for (;;) {
		mem = FUNC1(MC417_RWD);
		if ((mem & ALT_RDY) == 0)
			break;
		if (FUNC5(jiffies, timeout))
			break;
		FUNC6(1);
	}

	FUNC2(MC417_RWD, ALT_RD | ALT_WR | ALT_CS);
	if (read)
		return mem & ALT_DATA;

	return 0;
}