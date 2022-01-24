#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int queue_index; } ;
struct TYPE_10__ {TYPE_6__* sk; } ;
struct tun_struct {int flags; int numqueues; scalar_t__ numdisabled; int filter_attached; int queue_index; int /*<<< orphan*/ * tfiles; int /*<<< orphan*/  tun; int /*<<< orphan*/  sk; int /*<<< orphan*/  xdp_prog; scalar_t__ detached; TYPE_2__ xdp_rxq; struct net_device* dev; TYPE_1__ socket; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  fprog; int /*<<< orphan*/  security; } ;
struct tun_file {int flags; int numqueues; scalar_t__ numdisabled; int filter_attached; int queue_index; int /*<<< orphan*/ * tfiles; int /*<<< orphan*/  tun; int /*<<< orphan*/  sk; int /*<<< orphan*/  xdp_prog; scalar_t__ detached; TYPE_2__ xdp_rxq; struct net_device* dev; TYPE_1__ socket; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  fprog; int /*<<< orphan*/  security; } ;
struct net_device {int /*<<< orphan*/  tx_queue_len; } ;
struct file {struct tun_struct* private_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  sk_shutdown; } ;

/* Variables and functions */
 int E2BIG ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_MULTI_QUEUE ; 
 scalar_t__ MAX_TAP_QUEUES ; 
 int /*<<< orphan*/  MEM_TYPE_PAGE_SHARED ; 
 int /*<<< orphan*/  RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_XDP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tun_struct*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tun_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tun_struct*,struct tun_struct*,int,int) ; 
 int /*<<< orphan*/  tun_ptr_free ; 
 int /*<<< orphan*/  FUNC12 (struct tun_struct*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*,struct net_device*,int) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC17(struct tun_struct *tun, struct file *file,
		      bool skip_filter, bool napi, bool napi_frags,
		      bool publish_tun)
{
	struct tun_file *tfile = file->private_data;
	struct net_device *dev = tun->dev;
	int err;

	err = FUNC6(tfile->socket.sk, tun->security);
	if (err < 0)
		goto out;

	err = -EINVAL;
	if (FUNC5(tfile->tun) && !tfile->detached)
		goto out;

	err = -EBUSY;
	if (!(tun->flags & IFF_MULTI_QUEUE) && tun->numqueues == 1)
		goto out;

	err = -E2BIG;
	if (!tfile->detached &&
	    tun->numqueues + tun->numdisabled == MAX_TAP_QUEUES)
		goto out;

	err = 0;

	/* Re-attach the filter to persist device */
	if (!skip_filter && (tun->filter_attached == true)) {
		FUNC1(tfile->socket.sk);
		err = FUNC7(&tun->fprog, tfile->socket.sk);
		FUNC4(tfile->socket.sk);
		if (!err)
			goto out;
	}

	if (!tfile->detached &&
	    FUNC2(&tfile->tx_ring, dev->tx_queue_len,
			    GFP_KERNEL, tun_ptr_free)) {
		err = -ENOMEM;
		goto out;
	}

	tfile->queue_index = tun->numqueues;
	tfile->socket.sk->sk_shutdown &= ~RCV_SHUTDOWN;

	if (tfile->detached) {
		/* Re-attach detached tfile, updating XDP queue_index */
		FUNC0(!FUNC13(&tfile->xdp_rxq));

		if (tfile->xdp_rxq.queue_index    != tfile->queue_index)
			tfile->xdp_rxq.queue_index = tfile->queue_index;
	} else {
		/* Setup XDP RX-queue info, for new tfile getting attached */
		err = FUNC14(&tfile->xdp_rxq,
				       tun->dev, tfile->queue_index);
		if (err < 0)
			goto out;
		err = FUNC15(&tfile->xdp_rxq,
						 MEM_TYPE_PAGE_SHARED, NULL);
		if (err < 0) {
			FUNC16(&tfile->xdp_rxq);
			goto out;
		}
		err = 0;
	}

	if (tfile->detached) {
		FUNC10(tfile);
	} else {
		FUNC8(&tfile->sk);
		FUNC11(tun, tfile, napi, napi_frags);
	}

	if (FUNC5(tun->xdp_prog))
		FUNC9(&tfile->sk, SOCK_XDP);

	/* device is allowed to go away first, so no need to hold extra
	 * refcnt.
	 */

	/* Publish tfile->tun and tun->tfiles only after we've fully
	 * initialized tfile; otherwise we risk using half-initialized
	 * object.
	 */
	if (publish_tun)
		FUNC3(tfile->tun, tun);
	FUNC3(tun->tfiles[tun->numqueues], tfile);
	tun->numqueues++;
	FUNC12(tun);
out:
	return err;
}