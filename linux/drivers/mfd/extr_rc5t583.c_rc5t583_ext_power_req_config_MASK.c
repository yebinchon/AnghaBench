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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EXT_PWR_REQ ; 
 int RC5T583_EXT_PWRREQ1_CONTROL ; 
 int RC5T583_EXT_PWRREQ2_CONTROL ; 
 int FUNC0 (struct device*,int,int,int) ; 
 int FUNC1 (struct device*,int,int) ; 

int FUNC2(struct device *dev, int ds_id,
	int ext_pwr_req, int deepsleep_slot_nr)
{
	if ((ext_pwr_req & EXT_PWR_REQ) == EXT_PWR_REQ)
		return -EINVAL;

	if (ext_pwr_req & RC5T583_EXT_PWRREQ1_CONTROL)
		return FUNC0(dev, ds_id,
				ext_pwr_req, deepsleep_slot_nr);

	if (ext_pwr_req & RC5T583_EXT_PWRREQ2_CONTROL)
		return FUNC1(dev,
			ds_id, ext_pwr_req);
	return 0;
}