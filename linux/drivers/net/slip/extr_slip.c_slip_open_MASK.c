#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int receive_room; struct slip* disc_data; TYPE_1__* ops; } ;
struct TYPE_6__ {void* expires; } ;
struct slip {scalar_t__ magic; int keepalive; int outfill; int /*<<< orphan*/  flags; struct tty_struct* tty; TYPE_3__ outfill_timer; TYPE_3__ keepalive_timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * write; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EEXIST ; 
 int ENFILE ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int HZ ; 
 int /*<<< orphan*/  SLF_INUSE ; 
 scalar_t__ SLIP_MAGIC ; 
 int /*<<< orphan*/  SL_MTU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 void* jiffies ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct slip* FUNC7 () ; 
 int FUNC8 (struct slip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct slip*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct tty_struct *tty)
{
	struct slip *sl;
	int err;

	if (!FUNC1(CAP_NET_ADMIN))
		return -EPERM;

	if (tty->ops->write == NULL)
		return -EOPNOTSUPP;

	/* RTnetlink lock is misused here to serialize concurrent
	   opens of slip channels. There are better ways, but it is
	   the simplest one.
	 */
	FUNC4();

	/* Collect hanged up channels. */
	FUNC10();

	sl = tty->disc_data;

	err = -EEXIST;
	/* First make sure we're not already connected. */
	if (sl && sl->magic == SLIP_MAGIC)
		goto err_exit;

	/* OK.  Find a free SLIP channel to use. */
	err = -ENFILE;
	sl = FUNC7();
	if (sl == NULL)
		goto err_exit;

	sl->tty = tty;
	tty->disc_data = sl;
	sl->pid = current->pid;

	if (!FUNC11(SLF_INUSE, &sl->flags)) {
		/* Perform the low-level SLIP initialization. */
		err = FUNC8(sl, SL_MTU);
		if (err)
			goto err_free_chan;

		FUNC6(SLF_INUSE, &sl->flags);

		err = FUNC3(sl->dev);
		if (err)
			goto err_free_bufs;
	}

#ifdef CONFIG_SLIP_SMART
	if (sl->keepalive) {
		sl->keepalive_timer.expires = jiffies + sl->keepalive * HZ;
		add_timer(&sl->keepalive_timer);
	}
	if (sl->outfill) {
		sl->outfill_timer.expires = jiffies + sl->outfill * HZ;
		add_timer(&sl->outfill_timer);
	}
#endif

	/* Done.  We have linked the TTY line to a channel. */
	FUNC5();
	tty->receive_room = 65536;	/* We don't flow control */

	/* TTY layer expects 0 on success */
	return 0;

err_free_bufs:
	FUNC9(sl);

err_free_chan:
	sl->tty = NULL;
	tty->disc_data = NULL;
	FUNC2(SLF_INUSE, &sl->flags);

err_exit:
	FUNC5();

	/* Count references from TTY module */
	return err;
}