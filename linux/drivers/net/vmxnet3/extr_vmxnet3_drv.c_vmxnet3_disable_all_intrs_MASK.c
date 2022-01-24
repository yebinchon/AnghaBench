#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int num_intrs; } ;
struct vmxnet3_adapter {TYPE_4__ intr; TYPE_3__* shared; } ;
struct TYPE_5__ {int /*<<< orphan*/  intrCtrl; } ;
struct TYPE_6__ {TYPE_1__ intrConf; } ;
struct TYPE_7__ {TYPE_2__ devRead; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_IC_DISABLE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_adapter*,int) ; 

__attribute__((used)) static void
FUNC2(struct vmxnet3_adapter *adapter)
{
	int i;

	adapter->shared->devRead.intrConf.intrCtrl |=
					FUNC0(VMXNET3_IC_DISABLE_ALL);
	for (i = 0; i < adapter->intr.num_intrs; i++)
		FUNC1(adapter, i);
}