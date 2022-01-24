#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint ;
struct fza_private {scalar_t__ state_chg_flag; int /*<<< orphan*/  name; TYPE_1__* regs; int /*<<< orphan*/  state_chg_wait; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FZA_STATE_UNINITIALIZED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (struct fza_private*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 long FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC10(struct fza_private *fp)
{
	unsigned long flags;
	uint status, state;
	long t;

	FUNC5("%s: resetting the board...\n", fp->name);

	FUNC7(&fp->lock, flags);
	fp->state_chg_flag = 0;
	FUNC2(fp);
	FUNC8(&fp->lock, flags);

	/* DEC says RESET needs up to 30 seconds to complete.  My DEFZA-AA
	 * rev. C03 happily finishes in 9.7 seconds. :-)  But we need to
	 * be on the safe side...
	 */
	t = FUNC9(fp->state_chg_wait, fp->state_chg_flag,
			       45 * HZ);
	status = FUNC6(&fp->regs->status);
	state = FUNC0(status);
	if (fp->state_chg_flag == 0) {
		FUNC4("%s: RESET timed out!, state %x\n", fp->name, state);
		return -EIO;
	}
	if (state != FZA_STATE_UNINITIALIZED) {
		FUNC4("%s: RESET failed!, state %x, failure ID %x\n",
		       fp->name, state, FUNC1(status));
		return -EIO;
	}
	FUNC5("%s: OK\n", fp->name);
	FUNC3("%s: RESET: %lums elapsed\n", fp->name,
		 (45 * HZ - t) * 1000 / HZ);

	return 0;
}