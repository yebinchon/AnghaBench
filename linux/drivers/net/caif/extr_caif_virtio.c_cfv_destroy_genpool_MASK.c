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
struct cfv_info {int /*<<< orphan*/ * genpool; int /*<<< orphan*/  reserved_size; int /*<<< orphan*/  reserved_mem; int /*<<< orphan*/  alloc_dma; scalar_t__ alloc_addr; int /*<<< orphan*/  allocsz; TYPE_3__* vdev; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cfv_info *cfv)
{
	if (cfv->alloc_addr)
		FUNC0(cfv->vdev->dev.parent->parent,
				  cfv->allocsz, cfv->alloc_addr,
				  cfv->alloc_dma);

	if (!cfv->genpool)
		return;
	FUNC2(cfv->genpool,  cfv->reserved_mem,
		      cfv->reserved_size);
	FUNC1(cfv->genpool);
	cfv->genpool = NULL;
}