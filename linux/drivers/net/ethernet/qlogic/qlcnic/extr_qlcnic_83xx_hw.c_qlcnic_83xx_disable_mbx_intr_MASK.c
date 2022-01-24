#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_3__ {scalar_t__ pci_base0; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_DEF_INT_MASK ; 
 int /*<<< orphan*/  QLCNIC_MBX_INTR_ENBL ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct qlcnic_adapter *adapter)
{
	u32 mask;

	mask = FUNC0(adapter->ahw, QLCNIC_DEF_INT_MASK);
	FUNC2(1, adapter->ahw->pci_base0 + mask);
	FUNC1(adapter->ahw, QLCNIC_MBX_INTR_ENBL, 0);
}