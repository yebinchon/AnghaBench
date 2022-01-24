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
struct vexpress_syscfg_func {int num_templates; int* template; struct vexpress_syscfg* syscfg; } ;
struct vexpress_syscfg {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int EINTR ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ SYS_CFGCTRL ; 
 int SYS_CFGCTRL_START ; 
 int SYS_CFGCTRL_WRITE ; 
 scalar_t__ SYS_CFGDATA ; 
 scalar_t__ SYS_CFGSTAT ; 
 int SYS_CFGSTAT_COMPLETE ; 
 int SYS_CFGSTAT_ERR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct vexpress_syscfg_func*,int,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (long) ; 
 int /*<<< orphan*/  FUNC10 (long) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct vexpress_syscfg_func *func,
		int index, bool write, u32 *data)
{
	struct vexpress_syscfg *syscfg = func->syscfg;
	u32 command, status;
	int tries;
	long timeout;

	if (FUNC0(index >= func->num_templates))
		return -EINVAL;

	command = FUNC5(syscfg->base + SYS_CFGCTRL);
	if (FUNC0(command & SYS_CFGCTRL_START))
		return -EBUSY;

	command = func->template[index];
	command |= SYS_CFGCTRL_START;
	command |= write ? SYS_CFGCTRL_WRITE : 0;

	/* Use a canary for reads */
	if (!write)
		*data = 0xdeadbeef;

	FUNC2(syscfg->dev, "func %p, command %x, data %x\n",
			func, command, *data);
	FUNC11(*data, syscfg->base + SYS_CFGDATA);
	FUNC11(0, syscfg->base + SYS_CFGSTAT);
	FUNC11(command, syscfg->base + SYS_CFGCTRL);
	FUNC4();

	/* The operation can take ages... Go to sleep, 100us initially */
	tries = 100;
	timeout = 100;
	do {
		if (!FUNC3()) {
			FUNC7(TASK_INTERRUPTIBLE);
			FUNC6(FUNC10(timeout));
			if (FUNC8(current))
				return -EINTR;
		} else {
			FUNC9(timeout);
		}

		status = FUNC5(syscfg->base + SYS_CFGSTAT);
		if (status & SYS_CFGSTAT_ERR)
			return -EFAULT;

		if (timeout > 20)
			timeout -= 20;
	} while (--tries && !(status & SYS_CFGSTAT_COMPLETE));
	if (FUNC1(!tries))
		return -ETIMEDOUT;

	if (!write) {
		*data = FUNC5(syscfg->base + SYS_CFGDATA);
		FUNC2(syscfg->dev, "func %p, read data %x\n", func, *data);
	}

	return 0;
}