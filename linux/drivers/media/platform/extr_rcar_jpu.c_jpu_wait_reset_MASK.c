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
struct jpu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  JCCMD ; 
 int JCCMD_SRST ; 
 int /*<<< orphan*/  JPU_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int FUNC1 (struct jpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct jpu *jpu)
{
	unsigned long timeout;

	timeout = jiffies + FUNC2(JPU_RESET_TIMEOUT);

	while (FUNC1(jpu, JCCMD) & JCCMD_SRST) {
		if (FUNC4(jiffies, timeout)) {
			FUNC0(jpu->dev, "timed out in reset\n");
			return -ETIMEDOUT;
		}
		FUNC3();
	}

	return 0;
}