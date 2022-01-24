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
struct alx_priv {int num_napi; struct alx_napi** qnapi; } ;
struct alx_napi {struct alx_napi* rxq; struct alx_napi* txq; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alx_napi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct alx_priv *alx)
{
	struct alx_napi *np;
	int i;

	for (i = 0; i < alx->num_napi; i++) {
		np = alx->qnapi[i];
		if (!np)
			continue;

		FUNC1(&np->napi);
		FUNC0(np->txq);
		FUNC0(np->rxq);
		FUNC0(np);
		alx->qnapi[i] = NULL;
	}
}