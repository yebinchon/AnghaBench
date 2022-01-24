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
struct hnae3_handle {int dummy; } ;
typedef  enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;

/* Variables and functions */
 int HNS3_NIC_LB_SETUP_USEC ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int,int) ; 
 int FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, enum hnae3_loop loop_mode)
{
	struct hnae3_handle *h = FUNC0(ndev);
	int ret;

	ret = FUNC2(h);
	if (ret)
		return ret;

	ret = FUNC1(ndev, loop_mode, true);
	FUNC3(HNS3_NIC_LB_SETUP_USEC, HNS3_NIC_LB_SETUP_USEC * 2);

	return ret;
}