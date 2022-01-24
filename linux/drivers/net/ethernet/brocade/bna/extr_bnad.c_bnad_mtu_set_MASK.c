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
struct TYPE_3__ {int mtu_comp_status; int /*<<< orphan*/  mtu_comp; } ;
struct TYPE_4__ {int /*<<< orphan*/  enet; } ;
struct bnad {TYPE_1__ bnad_completions; int /*<<< orphan*/  bna_lock; TYPE_2__ bna; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnad_cb_enet_mtu_set ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct bnad *bnad, int frame_size)
{
	unsigned long flags;

	FUNC1(&bnad->bnad_completions.mtu_comp);

	FUNC2(&bnad->bna_lock, flags);
	FUNC0(&bnad->bna.enet, frame_size, bnad_cb_enet_mtu_set);
	FUNC3(&bnad->bna_lock, flags);

	FUNC4(&bnad->bnad_completions.mtu_comp);

	return bnad->bnad_completions.mtu_comp_status;
}