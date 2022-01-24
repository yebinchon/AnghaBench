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
typedef  int /*<<< orphan*/  u16 ;
struct nfp_pf {int /*<<< orphan*/  lock; int /*<<< orphan*/  app; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 struct nfp_pf* FUNC0 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct devlink *devlink, u16 mode,
					struct netlink_ext_ack *extack)
{
	struct nfp_pf *pf = FUNC0(devlink);
	int ret;

	FUNC1(&pf->lock);
	ret = FUNC3(pf->app, mode);
	FUNC2(&pf->lock);

	return ret;
}