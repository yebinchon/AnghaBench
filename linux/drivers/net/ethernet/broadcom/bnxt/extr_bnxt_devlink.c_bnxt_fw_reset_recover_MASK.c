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
struct devlink_health_reporter {int dummy; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 struct bnxt* FUNC1 (struct devlink_health_reporter*) ; 

__attribute__((used)) static int FUNC2(struct devlink_health_reporter *reporter,
				 void *priv_ctx)
{
	struct bnxt *bp = FUNC1(reporter);

	if (!priv_ctx)
		return -EOPNOTSUPP;

	FUNC0(bp);
	return 0;
}