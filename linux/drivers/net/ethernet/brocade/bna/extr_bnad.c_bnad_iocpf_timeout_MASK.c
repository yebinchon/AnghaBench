#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ioc; } ;
struct TYPE_9__ {TYPE_3__ ioceth; } ;
struct bnad {int /*<<< orphan*/  bna_lock; TYPE_4__ bna; } ;
struct TYPE_6__ {int /*<<< orphan*/  iocpf_timer; } ;
struct TYPE_7__ {TYPE_1__ ioc; } ;
struct TYPE_10__ {TYPE_2__ ioceth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__ bna ; 
 struct bnad* bnad ; 
 struct bnad* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct timer_list *t)
{
	struct bnad *bnad = FUNC1(bnad, t, bna.ioceth.ioc.iocpf_timer);
	unsigned long flags;

	FUNC2(&bnad->bna_lock, flags);
	FUNC0(&bnad->bna.ioceth.ioc);
	FUNC3(&bnad->bna_lock, flags);
}