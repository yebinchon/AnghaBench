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
struct tty_struct {int receive_room; struct slcan* disc_data; TYPE_1__* ops; } ;
struct slcan {scalar_t__ magic; int /*<<< orphan*/  flags; struct tty_struct* tty; int /*<<< orphan*/  dev; scalar_t__ xleft; scalar_t__ rcount; } ;
struct TYPE_2__ {int /*<<< orphan*/ * write; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EEXIST ; 
 int ENFILE ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ SLCAN_MAGIC ; 
 int /*<<< orphan*/  SLF_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct slcan* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct tty_struct *tty)
{
	struct slcan *sl;
	int err;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	if (tty->ops->write == NULL)
		return -EOPNOTSUPP;

	/* RTnetlink lock is misused here to serialize concurrent
	   opens of slcan channels. There are better ways, but it is
	   the simplest one.
	 */
	FUNC3();

	/* Collect hanged up channels. */
	FUNC7();

	sl = tty->disc_data;

	err = -EEXIST;
	/* First make sure we're not already connected. */
	if (sl && sl->magic == SLCAN_MAGIC)
		goto err_exit;

	/* OK.  Find a free SLCAN channel to use. */
	err = -ENFILE;
	sl = FUNC6();
	if (sl == NULL)
		goto err_exit;

	sl->tty = tty;
	tty->disc_data = sl;

	if (!FUNC8(SLF_INUSE, &sl->flags)) {
		/* Perform the low-level SLCAN initialization. */
		sl->rcount   = 0;
		sl->xleft    = 0;

		FUNC5(SLF_INUSE, &sl->flags);

		err = FUNC2(sl->dev);
		if (err)
			goto err_free_chan;
	}

	/* Done.  We have linked the TTY line to a channel. */
	FUNC4();
	tty->receive_room = 65536;	/* We don't flow control */

	/* TTY layer expects 0 on success */
	return 0;

err_free_chan:
	sl->tty = NULL;
	tty->disc_data = NULL;
	FUNC1(SLF_INUSE, &sl->flags);

err_exit:
	FUNC4();

	/* Count references from TTY module */
	return err;
}