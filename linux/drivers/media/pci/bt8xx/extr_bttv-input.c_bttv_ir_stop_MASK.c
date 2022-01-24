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
typedef  int u32 ;
struct bttv {int /*<<< orphan*/  c; TYPE_1__* remote; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; scalar_t__ rc5_gpio; scalar_t__ polling; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bttv *btv)
{
	if (btv->remote->polling)
		FUNC2(&btv->remote->timer);

	if (btv->remote->rc5_gpio) {
		u32 gpio;

		FUNC2(&btv->remote->timer);

		gpio = FUNC0(&btv->c);
		FUNC1(&btv->c, gpio & ~(1 << 4));
	}
}