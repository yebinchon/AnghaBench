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
struct sfp {int /*<<< orphan*/  timeout; int /*<<< orphan*/  poll; int /*<<< orphan*/  st_mutex; int /*<<< orphan*/  sm_mutex; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sfp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sfp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sfp_poll ; 
 int /*<<< orphan*/  sfp_timeout ; 

__attribute__((used)) static struct sfp *FUNC4(struct device *dev)
{
	struct sfp *sfp;

	sfp = FUNC2(sizeof(*sfp), GFP_KERNEL);
	if (!sfp)
		return FUNC0(-ENOMEM);

	sfp->dev = dev;

	FUNC3(&sfp->sm_mutex);
	FUNC3(&sfp->st_mutex);
	FUNC1(&sfp->poll, sfp_poll);
	FUNC1(&sfp->timeout, sfp_timeout);

	return sfp;
}