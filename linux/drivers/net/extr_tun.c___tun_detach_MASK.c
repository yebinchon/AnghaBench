#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct tun_struct {size_t numqueues; scalar_t__ numdisabled; int flags; TYPE_1__* dev; int /*<<< orphan*/ ** tfiles; } ;
struct tun_file {size_t queue_index; int /*<<< orphan*/  sk; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  xdp_rxq; scalar_t__ detached; int /*<<< orphan*/ * tun; } ;
struct TYPE_3__ {scalar_t__ reg_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IFF_PERSIST ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct tun_struct*,struct tun_file*) ; 
 struct tun_struct* FUNC9 (struct tun_file*) ; 
 int /*<<< orphan*/  FUNC10 (struct tun_struct*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tun_file*) ; 
 int /*<<< orphan*/  FUNC12 (struct tun_file*) ; 
 int /*<<< orphan*/  tun_ptr_free ; 
 int /*<<< orphan*/  FUNC13 (struct tun_file*) ; 
 int /*<<< orphan*/  FUNC14 (struct tun_struct*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct tun_file *tfile, bool clean)
{
	struct tun_file *ntfile;
	struct tun_struct *tun;

	tun = FUNC5(tfile->tun);

	if (tun && clean) {
		FUNC12(tfile);
		FUNC11(tfile);
	}

	if (tun && !tfile->detached) {
		u16 index = tfile->queue_index;
		FUNC0(index >= tun->numqueues);

		FUNC4(tun->tfiles[index],
				   tun->tfiles[tun->numqueues - 1]);
		ntfile = FUNC5(tun->tfiles[index]);
		ntfile->queue_index = index;
		FUNC4(tun->tfiles[tun->numqueues - 1],
				   NULL);

		--tun->numqueues;
		if (clean) {
			FUNC1(tfile->tun, NULL);
			FUNC6(&tfile->sk);
		} else
			FUNC8(tun, tfile);

		FUNC7();
		FUNC10(tun, tun->numqueues + 1);
		/* Drop read queue */
		FUNC13(tfile);
		FUNC14(tun);
	} else if (tfile->detached && clean) {
		tun = FUNC9(tfile);
		FUNC6(&tfile->sk);
	}

	if (clean) {
		if (tun && tun->numqueues == 0 && tun->numdisabled == 0) {
			FUNC2(tun->dev);

			if (!(tun->flags & IFF_PERSIST) &&
			    tun->dev->reg_state == NETREG_REGISTERED)
				FUNC15(tun->dev);
		}
		if (tun)
			FUNC16(&tfile->xdp_rxq);
		FUNC3(&tfile->tx_ring, tun_ptr_free);
		FUNC6(&tfile->sk);
	}
}