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
struct qlcnic_adapter {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_CMD_CEE_GET ; 
 int QLC_DCB_NUM_PARAM ; 
 int /*<<< orphan*/  RTM_GETDCB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int) ; 

__attribute__((used)) static void FUNC2(struct qlcnic_adapter *adapter)
{
	int i;

	for (i = 0; i < QLC_DCB_NUM_PARAM; i++)
		FUNC1(adapter, i);

	FUNC0(adapter->netdev, RTM_GETDCB, DCB_CMD_CEE_GET, 0, 0);
}