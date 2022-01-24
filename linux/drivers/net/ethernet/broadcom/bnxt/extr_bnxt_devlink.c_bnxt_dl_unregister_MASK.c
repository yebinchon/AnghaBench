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
struct devlink {int dummy; } ;
struct bnxt {int /*<<< orphan*/  dl_port; struct devlink* dl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  bnxt_dl_params ; 
 int /*<<< orphan*/  bnxt_dl_port_params ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct devlink*) ; 

void FUNC7(struct bnxt *bp)
{
	struct devlink *dl = bp->dl;

	if (!dl)
		return;

	FUNC1(bp);
	FUNC4(&bp->dl_port, bnxt_dl_port_params,
				       FUNC0(bnxt_dl_port_params));
	FUNC5(&bp->dl_port);
	FUNC3(dl, bnxt_dl_params,
				  FUNC0(bnxt_dl_params));
	FUNC6(dl);
	FUNC2(dl);
}