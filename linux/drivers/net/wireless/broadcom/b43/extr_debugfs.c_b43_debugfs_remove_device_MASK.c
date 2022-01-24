#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct b43_wldev {struct b43_dfsentry* dfsentry; } ;
struct TYPE_15__ {struct b43_dfsentry* log; } ;
struct TYPE_14__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_13__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_24__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_23__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_22__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_21__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_20__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_19__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_18__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_17__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_16__ {int /*<<< orphan*/  dentry; } ;
struct b43_dfsentry {TYPE_12__ txstatlog; int /*<<< orphan*/  subdir; TYPE_11__ file_loctls; TYPE_10__ file_restart; TYPE_9__ file_txstat; TYPE_8__ file_mmio32write; TYPE_7__ file_mmio32read; TYPE_6__ file_mmio16write; TYPE_5__ file_mmio16read; TYPE_4__ file_shm32write; TYPE_3__ file_shm32read; TYPE_2__ file_shm16write; TYPE_1__ file_shm16read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_dfsentry*) ; 

void FUNC3(struct b43_wldev *dev)
{
	struct b43_dfsentry *e;

	if (!dev)
		return;
	e = dev->dfsentry;
	if (!e)
		return;
	FUNC0(dev);

	FUNC1(e->file_shm16read.dentry);
	FUNC1(e->file_shm16write.dentry);
	FUNC1(e->file_shm32read.dentry);
	FUNC1(e->file_shm32write.dentry);
	FUNC1(e->file_mmio16read.dentry);
	FUNC1(e->file_mmio16write.dentry);
	FUNC1(e->file_mmio32read.dentry);
	FUNC1(e->file_mmio32write.dentry);
	FUNC1(e->file_txstat.dentry);
	FUNC1(e->file_restart.dentry);
	FUNC1(e->file_loctls.dentry);

	FUNC1(e->subdir);
	FUNC2(e->txstatlog.log);
	FUNC2(e);
}