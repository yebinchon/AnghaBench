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
struct cx88_core {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MO_GP2_IO ; 
#define  XC2028_TUNER_RESET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct cx88_core *core,
				   int command, int arg)
{
	switch (command) {
	case XC2028_TUNER_RESET:
		FUNC0(MO_GP2_IO, 0xcf7);
		FUNC1(50);
		FUNC0(MO_GP2_IO, 0xef5);
		FUNC1(50);
		FUNC0(MO_GP2_IO, 0xcf7);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}