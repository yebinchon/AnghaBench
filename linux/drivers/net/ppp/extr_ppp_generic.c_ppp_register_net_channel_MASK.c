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
struct ppp_net {int /*<<< orphan*/  all_channels_lock; int /*<<< orphan*/  new_channels; scalar_t__ last_channel_index; } ;
struct ppp_channel {int /*<<< orphan*/  hdrlen; struct channel* ppp; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ index; int /*<<< orphan*/  hdrlen; } ;
struct channel {int lastseq; int /*<<< orphan*/  list; TYPE_1__ file; int /*<<< orphan*/  upl; int /*<<< orphan*/  downl; int /*<<< orphan*/  chan_sem; int /*<<< orphan*/  chan_net; struct ppp_channel* chan; int /*<<< orphan*/ * ppp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  channel_count ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct channel* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ppp_net* FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct net *net, struct ppp_channel *chan)
{
	struct channel *pch;
	struct ppp_net *pn;

	pch = FUNC4(sizeof(struct channel), GFP_KERNEL);
	if (!pch)
		return -ENOMEM;

	pn = FUNC6(net);

	pch->ppp = NULL;
	pch->chan = chan;
	pch->chan_net = FUNC1(net);
	chan->ppp = pch;
	FUNC2(&pch->file, CHANNEL);
	pch->file.hdrlen = chan->hdrlen;
#ifdef CONFIG_PPP_MULTILINK
	pch->lastseq = -1;
#endif /* CONFIG_PPP_MULTILINK */
	FUNC3(&pch->chan_sem);
	FUNC9(&pch->downl);
	FUNC7(&pch->upl);

	FUNC8(&pn->all_channels_lock);
	pch->file.index = ++pn->last_channel_index;
	FUNC5(&pch->list, &pn->new_channels);
	FUNC0(&channel_count);
	FUNC10(&pn->all_channels_lock);

	return 0;
}