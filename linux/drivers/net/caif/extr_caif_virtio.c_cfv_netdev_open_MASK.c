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
struct cfv_info {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct cfv_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cfv_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct cfv_info *cfv = FUNC3(netdev);

	if (FUNC0(cfv))
		return -ENOMEM;

	FUNC4(netdev);
	FUNC1(&cfv->napi);

	/* Schedule NAPI to read any pending packets */
	FUNC2(&cfv->napi);
	return 0;
}