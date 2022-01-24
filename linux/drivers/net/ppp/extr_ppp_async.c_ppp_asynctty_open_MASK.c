#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int receive_room; struct asyncppp* disc_data; TYPE_1__* ops; } ;
struct TYPE_4__ {int speed; void* mtu; int /*<<< orphan*/ * ops; struct asyncppp* private; } ;
struct asyncppp {unsigned int* xaccm; unsigned int raccm; int lcp_fcs; TYPE_2__ chan; int /*<<< orphan*/  dead; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  tsk; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  obuf; int /*<<< orphan*/  olim; int /*<<< orphan*/  optr; int /*<<< orphan*/  recv_lock; int /*<<< orphan*/  xmit_lock; void* mru; struct tty_struct* tty; } ;
struct TYPE_3__ {int /*<<< orphan*/ * write; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* PPP_MRU ; 
 int /*<<< orphan*/  async_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct asyncppp*) ; 
 struct asyncppp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppp_async_process ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static int
FUNC9(struct tty_struct *tty)
{
	struct asyncppp *ap;
	int err;
	int speed;

	if (tty->ops->write == NULL)
		return -EOPNOTSUPP;

	err = -ENOMEM;
	ap = FUNC2(sizeof(*ap), GFP_KERNEL);
	if (!ap)
		goto out;

	/* initialize the asyncppp structure */
	ap->tty = tty;
	ap->mru = PPP_MRU;
	FUNC6(&ap->xmit_lock);
	FUNC6(&ap->recv_lock);
	ap->xaccm[0] = ~0U;
	ap->xaccm[3] = 0x60000000U;
	ap->raccm = ~0U;
	ap->optr = ap->obuf;
	ap->olim = ap->obuf;
	ap->lcp_fcs = -1;

	FUNC5(&ap->rqueue);
	FUNC7(&ap->tsk, ppp_async_process, (unsigned long) ap);

	FUNC4(&ap->refcnt, 1);
	FUNC0(&ap->dead);

	ap->chan.private = ap;
	ap->chan.ops = &async_ops;
	ap->chan.mtu = PPP_MRU;
	speed = FUNC8(tty);
	ap->chan.speed = speed;
	err = FUNC3(&ap->chan);
	if (err)
		goto out_free;

	tty->disc_data = ap;
	tty->receive_room = 65536;
	return 0;

 out_free:
	FUNC1(ap);
 out:
	return err;
}