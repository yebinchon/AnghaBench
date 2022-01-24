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
struct nfp_pf {unsigned int num_shared_bufs; TYPE_1__* shared_bufs; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct devlink* FUNC3 (struct nfp_pf*) ; 

void FUNC4(struct nfp_pf *pf)
{
	struct devlink *devlink = FUNC3(pf);
	unsigned int i;

	for (i = 0; i < pf->num_shared_bufs; i++)
		FUNC0(devlink,
				      FUNC2(pf->shared_bufs[i].id));
	FUNC1(pf->shared_bufs);
}