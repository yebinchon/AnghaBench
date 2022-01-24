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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct hinic_hwdev {int dummy; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct hinic_dev*,int,int,int) ; 
 int FUNC1 (struct hinic_dev*,scalar_t__) ; 

int FUNC2(struct hinic_dev *nic_dev, u8 lro_en,
			   u32 lro_timer, u32 wqe_num)
{
	struct hinic_hwdev *hwdev = nic_dev->hwdev;
	u8 ipv4_en;
	u8 ipv6_en;
	int err;

	if (!hwdev)
		return -EINVAL;

	ipv4_en = lro_en ? 1 : 0;
	ipv6_en = lro_en ? 1 : 0;

	err = FUNC0(nic_dev, ipv4_en, ipv6_en, (u8)wqe_num);
	if (err)
		return err;

	err = FUNC1(nic_dev, lro_timer);
	if (err)
		return err;

	return 0;
}