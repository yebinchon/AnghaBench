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
struct qlcnic_dcb {scalar_t__ state; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {struct qlcnic_dcb* dcb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct qlcnic_dcb* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 

int FUNC3(struct qlcnic_adapter *adapter)
{
	struct qlcnic_dcb *dcb;

	if (FUNC2(adapter))
		return 0;

	dcb = FUNC0(sizeof(struct qlcnic_dcb), GFP_ATOMIC);
	if (!dcb)
		return -ENOMEM;

	adapter->dcb = dcb;
	dcb->adapter = adapter;
	FUNC1(adapter);
	dcb->state = 0;

	return 0;
}