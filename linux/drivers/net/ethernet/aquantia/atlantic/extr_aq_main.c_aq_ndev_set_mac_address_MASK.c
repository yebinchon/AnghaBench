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
struct aq_nic_s {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aq_nic_s*,struct net_device*) ; 
 int FUNC1 (struct net_device*,void*) ; 
 struct aq_nic_s* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, void *addr)
{
	struct aq_nic_s *aq_nic = FUNC2(ndev);
	int err = 0;

	err = FUNC1(ndev, addr);
	if (err < 0)
		goto err_exit;
	err = FUNC0(aq_nic, ndev);
	if (err < 0)
		goto err_exit;

err_exit:
	return err;
}