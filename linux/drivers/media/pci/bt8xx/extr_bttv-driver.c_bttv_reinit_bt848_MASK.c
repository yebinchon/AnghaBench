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
struct TYPE_3__ {int pll_current; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr; } ;
struct bttv {int /*<<< orphan*/  tvnorm; int /*<<< orphan*/  input; TYPE_1__ pll; int /*<<< orphan*/  s_lock; scalar_t__ errors; TYPE_2__ c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ) ; 
 scalar_t__ bttv_verbose ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct bttv *btv)
{
	unsigned long flags;

	if (bttv_verbose)
		FUNC2("%d: reset, reinitialize\n", btv->c.nr);
	FUNC4(&btv->s_lock,flags);
	btv->errors=0;
	FUNC0(btv,0);
	FUNC5(&btv->s_lock,flags);

	FUNC1(btv);
	btv->pll.pll_current = -1;
	FUNC3(btv, btv->input, btv->tvnorm);
}