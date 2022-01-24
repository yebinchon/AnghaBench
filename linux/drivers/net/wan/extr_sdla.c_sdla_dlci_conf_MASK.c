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
struct frad_local {int /*<<< orphan*/ * dlci; struct net_device** master; } ;
struct dlci_local {int /*<<< orphan*/  config; } ;
struct dlci_conf {int dummy; } ;

/* Variables and functions */
 int CONFIG_DLCI_MAX ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  SDLA_READ_DLCI_CONFIGURATION ; 
 short SDLA_RET_OK ; 
 int /*<<< orphan*/  SDLA_SET_DLCI_CONFIGURATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 short FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,short*) ; 

__attribute__((used)) static int FUNC4(struct net_device *slave, struct net_device *master, int get)
{
	struct frad_local *flp;
	struct dlci_local *dlp;
	int               i;
	short             len, ret;

	flp = FUNC1(slave);

	for(i=0;i<CONFIG_DLCI_MAX;i++)
		if (flp->master[i] == master)
			break;

	if (i == CONFIG_DLCI_MAX)
		return -ENODEV;

	dlp = FUNC1(master);

	ret = SDLA_RET_OK;
	len = sizeof(struct dlci_conf);
	if (FUNC2(slave)) {
		if (get)
			ret = FUNC3(slave, SDLA_READ_DLCI_CONFIGURATION, FUNC0(flp->dlci[i]), 0,  
			            NULL, 0, &dlp->config, &len);
		else
			ret = FUNC3(slave, SDLA_SET_DLCI_CONFIGURATION, FUNC0(flp->dlci[i]), 0,  
			            &dlp->config, sizeof(struct dlci_conf) - 4 * sizeof(short), NULL, NULL);
	}

	return ret == SDLA_RET_OK ? 0 : -EIO;
}