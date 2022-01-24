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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct fm10k_vf_info {int /*<<< orphan*/  mac; } ;
struct fm10k_iov_data {int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct fm10k_intfc {struct fm10k_iov_data* iov_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*,struct fm10k_vf_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fm10k_intfc* FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *netdev, int vf_idx, u8 *mac)
{
	struct fm10k_intfc *interface = FUNC4(netdev);
	struct fm10k_iov_data *iov_data = interface->iov_data;
	struct fm10k_vf_info *vf_info;

	/* verify SR-IOV is active and that vf idx is valid */
	if (!iov_data || vf_idx >= iov_data->num_vfs)
		return -EINVAL;

	/* verify MAC addr is valid */
	if (!FUNC3(mac) && !FUNC2(mac))
		return -EINVAL;

	/* record new MAC address */
	vf_info = &iov_data->vf_info[vf_idx];
	FUNC0(vf_info->mac, mac);

	FUNC1(interface, vf_info);

	return 0;
}