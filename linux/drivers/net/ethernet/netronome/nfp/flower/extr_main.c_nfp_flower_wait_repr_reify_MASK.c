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
struct nfp_flower_priv {int /*<<< orphan*/  reify_wait_queue; } ;
struct nfp_app {int /*<<< orphan*/  cpp; TYPE_1__* pf; struct nfp_flower_priv* priv; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFP_FL_REPLY_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nfp_app *app, atomic_t *replies, int tot_repl)
{
	struct nfp_flower_priv *priv = app->priv;

	if (!tot_repl)
		return 0;

	FUNC1(&app->pf->lock);
	if (!FUNC3(priv->reify_wait_queue,
				FUNC0(replies) >= tot_repl,
				NFP_FL_REPLY_TIMEOUT)) {
		FUNC2(app->cpp, "Not all reprs responded to reify\n");
		return -EIO;
	}

	return 0;
}