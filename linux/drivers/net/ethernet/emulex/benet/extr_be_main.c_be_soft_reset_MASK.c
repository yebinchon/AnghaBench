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
typedef  int /*<<< orphan*/  u32 ;
struct be_adapter {scalar_t__ pcicfg; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SLIPORT_SOFTRESET_OFFSET ; 
 int /*<<< orphan*/  SLIPORT_SOFTRESET_SR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct be_adapter *adapter)
{
	u32 val;

	FUNC0(&adapter->pdev->dev, "Initiating chip soft reset\n");
	val = FUNC1(adapter->pcicfg + SLIPORT_SOFTRESET_OFFSET);
	val |= SLIPORT_SOFTRESET_SR_MASK;
	FUNC2(val, adapter->pcicfg + SLIPORT_SOFTRESET_OFFSET);
}