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
typedef  int /*<<< orphan*/  u32 ;
struct enic {int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_OPENF_IG_DESCCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  vnic_dev_open ; 
 int /*<<< orphan*/  vnic_dev_open_done ; 

__attribute__((used)) static int FUNC3(struct enic *enic)
{
	int err;
	u32 flags = CMD_OPENF_IG_DESCCACHE;

	err = FUNC1(enic->vdev, vnic_dev_open,
		vnic_dev_open_done, flags);
	if (err)
		FUNC0(FUNC2(enic), "vNIC device open failed, err %d\n",
			err);

	return err;
}