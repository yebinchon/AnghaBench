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
 int FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_nic_s*) ; 
 int FUNC2 (struct aq_nic_s*) ; 
 int FUNC3 (struct aq_nic_s*) ; 
 int FUNC4 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	int err = 0;
	struct aq_nic_s *aq_nic = FUNC5(ndev);

	err = FUNC2(aq_nic);
	if (err < 0)
		goto err_exit;

	err = FUNC4(aq_nic);
	if (err < 0)
		goto err_exit;

	err = FUNC0(aq_nic);
	if (err < 0)
		goto err_exit;

	err = FUNC3(aq_nic);
	if (err < 0)
		goto err_exit;

err_exit:
	if (err < 0)
		FUNC1(aq_nic);
	return err;
}