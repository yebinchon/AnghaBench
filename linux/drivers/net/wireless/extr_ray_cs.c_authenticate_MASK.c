#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {int /*<<< orphan*/  authentication_state; TYPE_2__ timer; int /*<<< orphan*/  bss_id; struct pcmcia_device* finder; } ;
typedef  TYPE_1__ ray_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  AWAITING_RESPONSE ; 
 int HZ ; 
 int /*<<< orphan*/  OPEN_AUTH_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  authenticate_timeout ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  join_net ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC5(ray_dev_t *local)
{
	struct pcmcia_device *link = local->finder;
	FUNC3(&link->dev, "ray_cs Starting authentication.\n");
	if (!(FUNC4(link))) {
		FUNC3(&link->dev, "ray_cs authenticate - device not present\n");
		return;
	}

	FUNC2(&local->timer);
	if (FUNC1(local, local->bss_id, OPEN_AUTH_REQUEST)) {
		local->timer.function = join_net;
	} else {
		local->timer.function = authenticate_timeout;
	}
	local->timer.expires = jiffies + HZ * 2;
	FUNC0(&local->timer);
	local->authentication_state = AWAITING_RESPONSE;
}