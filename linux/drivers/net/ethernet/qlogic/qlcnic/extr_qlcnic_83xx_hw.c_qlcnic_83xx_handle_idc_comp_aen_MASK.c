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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {TYPE_3__* ahw; TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_2__ idc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_COMP_AEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qlcnic_adapter *adapter,
					    u32 data[])
{
	FUNC2(&adapter->pdev->dev, "Completion AEN:0x%x.\n",
		FUNC0(data[0]));
	FUNC1(QLC_83XX_IDC_COMP_AEN, &adapter->ahw->idc.status);
	return;
}