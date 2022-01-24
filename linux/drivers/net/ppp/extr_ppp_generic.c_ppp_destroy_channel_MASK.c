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
struct TYPE_2__ {int /*<<< orphan*/  rq; int /*<<< orphan*/  xq; int /*<<< orphan*/  dead; } ;
struct channel {TYPE_1__ file; int /*<<< orphan*/ * chan_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  channel_count ; 
 int /*<<< orphan*/  FUNC1 (struct channel*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct channel *pch)
{
	FUNC3(pch->chan_net);
	pch->chan_net = NULL;

	FUNC0(&channel_count);

	if (!pch->file.dead) {
		/* "can't happen" */
		FUNC2("ppp: destroying undead channel %p !\n", pch);
		return;
	}
	FUNC4(&pch->file.xq);
	FUNC4(&pch->file.rq);
	FUNC1(pch);
}