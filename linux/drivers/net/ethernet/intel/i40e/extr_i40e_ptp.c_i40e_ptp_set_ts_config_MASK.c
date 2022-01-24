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
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
struct i40e_pf {int flags; struct hwtstamp_config tstamp_config; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int EFAULT ; 
 int EOPNOTSUPP ; 
 int I40E_FLAG_PTP ; 
 scalar_t__ FUNC0 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int FUNC2 (struct i40e_pf*,struct hwtstamp_config*) ; 

int FUNC3(struct i40e_pf *pf, struct ifreq *ifr)
{
	struct hwtstamp_config config;
	int err;

	if (!(pf->flags & I40E_FLAG_PTP))
		return -EOPNOTSUPP;

	if (FUNC0(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	err = FUNC2(pf, &config);
	if (err)
		return err;

	/* save these settings for future reference */
	pf->tstamp_config = config;

	return FUNC1(ifr->ifr_data, &config, sizeof(config)) ?
		-EFAULT : 0;
}