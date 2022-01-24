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
struct velocity_td_info {int dummy; } ;
struct TYPE_4__ {int numq; scalar_t__* used; scalar_t__* curr; scalar_t__* tail; int /*<<< orphan*/ * infos; } ;
struct TYPE_3__ {int /*<<< orphan*/  numtx; } ;
struct velocity_info {TYPE_2__ tx; TYPE_1__ options; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct velocity_info *vptr)
{
	int j;

	/* Init the TD ring entries */
	for (j = 0; j < vptr->tx.numq; j++) {

		vptr->tx.infos[j] = FUNC0(vptr->options.numtx,
					    sizeof(struct velocity_td_info),
					    GFP_KERNEL);
		if (!vptr->tx.infos[j])	{
			while (--j >= 0)
				FUNC1(vptr->tx.infos[j]);
			return -ENOMEM;
		}

		vptr->tx.tail[j] = vptr->tx.curr[j] = vptr->tx.used[j] = 0;
	}
	return 0;
}