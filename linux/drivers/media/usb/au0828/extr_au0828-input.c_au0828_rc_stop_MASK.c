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
struct rc_dev {struct au0828_rc* priv; } ;
struct au0828_rc {TYPE_1__* dev; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_rc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rc_dev *rc)
{
	struct au0828_rc *ir = rc->priv;

	FUNC1(&ir->work);

	/* do nothing if device is disconnected */
	if (!FUNC2(DEV_DISCONNECTED, &ir->dev->dev_state)) {
		/* Disable IR */
		FUNC0(ir, 0xe0, 1 << 4);
	}
}