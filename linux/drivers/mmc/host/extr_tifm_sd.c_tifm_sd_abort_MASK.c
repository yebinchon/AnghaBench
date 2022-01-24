#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct tifm_sd {TYPE_3__* dev; int /*<<< orphan*/  cmd_flags; TYPE_2__* req; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__* cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tifm_sd* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct tifm_sd* host ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct tifm_sd *host = FUNC1(host, t, timer);

	FUNC2("%s : card failed to respond for a long period of time "
	       "(%x, %x)\n",
	       FUNC0(&host->dev->dev), host->req->cmd->opcode, host->cmd_flags);

	FUNC3(host->dev);
}