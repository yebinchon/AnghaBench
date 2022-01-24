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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHAN_INITIALIZE_ACK ; 
 int /*<<< orphan*/  QLCNIC_CMDPEG_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 

int
FUNC3(struct qlcnic_adapter *adapter)
{
	int err;

	err = FUNC1(adapter);
	if (err)
		return err;

	err = FUNC2(adapter);
	if (err)
		return err;

	FUNC0(adapter, QLCNIC_CMDPEG_STATE, PHAN_INITIALIZE_ACK);

	return err;
}