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
struct ixgbe_adapter {int /*<<< orphan*/  tstamp_config; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int FUNC2 (struct ixgbe_adapter*,struct hwtstamp_config*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hwtstamp_config*,int) ; 

int FUNC4(struct ixgbe_adapter *adapter, struct ifreq *ifr)
{
	struct hwtstamp_config config;
	int err;

	if (FUNC0(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	err = FUNC2(adapter, &config);
	if (err)
		return err;

	/* save these settings for future reference */
	FUNC3(&adapter->tstamp_config, &config,
	       sizeof(adapter->tstamp_config));

	return FUNC1(ifr->ifr_data, &config, sizeof(config)) ?
		-EFAULT : 0;
}