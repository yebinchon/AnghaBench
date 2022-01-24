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
struct net_device {int dummy; } ;
typedef  enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;

/* Variables and functions */
 int HNS3_NIC_LB_SETUP_USEC ; 
 int FUNC0 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, enum hnae3_loop loop_mode)
{
	int ret;

	ret = FUNC0(ndev, loop_mode, false);
	if (ret) {
		FUNC1(ndev, "lb_setup return error: %d\n", ret);
		return ret;
	}

	FUNC2(HNS3_NIC_LB_SETUP_USEC, HNS3_NIC_LB_SETUP_USEC * 2);

	return 0;
}