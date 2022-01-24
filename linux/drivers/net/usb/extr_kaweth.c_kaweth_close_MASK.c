#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct kaweth_device {int /*<<< orphan*/  intf; int /*<<< orphan*/  status; scalar_t__ opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  KAWETH_STATUS_CLOSING ; 
 int /*<<< orphan*/  FUNC0 (struct kaweth_device*) ; 
 struct kaweth_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC1(net);

	FUNC2(net);
	kaweth->opened = 0;

	kaweth->status |= KAWETH_STATUS_CLOSING;

	FUNC0(kaweth);

	kaweth->status &= ~KAWETH_STATUS_CLOSING;

	FUNC3(kaweth->intf);

	return 0;
}