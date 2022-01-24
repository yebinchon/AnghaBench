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
struct ppp_net {int /*<<< orphan*/  all_channels_lock; } ;
struct ppp_channel {struct channel* ppp; } ;
struct TYPE_2__ {int dead; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  rwait; } ;
struct channel {TYPE_1__ file; int /*<<< orphan*/  list; int /*<<< orphan*/  chan_net; int /*<<< orphan*/  chan_sem; int /*<<< orphan*/  downl; int /*<<< orphan*/ * chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct channel*) ; 
 struct ppp_net* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(struct ppp_channel *chan)
{
	struct channel *pch = chan->ppp;
	struct ppp_net *pn;

	if (!pch)
		return;		/* should never happen */

	chan->ppp = NULL;

	/*
	 * This ensures that we have returned from any calls into the
	 * the channel's start_xmit or ioctl routine before we proceed.
	 */
	FUNC0(&pch->chan_sem);
	FUNC6(&pch->downl);
	pch->chan = NULL;
	FUNC7(&pch->downl);
	FUNC8(&pch->chan_sem);
	FUNC3(pch);

	pn = FUNC4(pch->chan_net);
	FUNC6(&pn->all_channels_lock);
	FUNC1(&pch->list);
	FUNC7(&pn->all_channels_lock);

	pch->file.dead = 1;
	FUNC9(&pch->file.rwait);
	if (FUNC5(&pch->file.refcnt))
		FUNC2(pch);
}