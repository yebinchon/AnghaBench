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
struct firedtv {TYPE_1__* remote_ctrl_dev; int /*<<< orphan*/  remote_ctrl_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct firedtv *fdtv)
{
	FUNC0(&fdtv->remote_ctrl_work);
	FUNC2(fdtv->remote_ctrl_dev->keycode);
	FUNC1(fdtv->remote_ctrl_dev);
}