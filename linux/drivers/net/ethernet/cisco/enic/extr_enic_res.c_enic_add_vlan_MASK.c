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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct enic {int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_VLAN_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct enic *enic, u16 vlanid)
{
	u64 a0 = vlanid, a1 = 0;
	int wait = 1000;
	int err;

	err = FUNC2(enic->vdev, CMD_VLAN_ADD, &a0, &a1, wait);
	if (err)
		FUNC0(FUNC1(enic), "Can't add vlan id, %d\n", err);

	return err;
}