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
struct frad_local {int /*<<< orphan*/  config; scalar_t__* dlci; } ;
struct frad_conf {int dummy; } ;
struct conf_data {scalar_t__* dlci; } ;

/* Variables and functions */
 int CONFIG_DLCI_MAX ; 
 int /*<<< orphan*/  SDLA_DISABLE_COMMUNICATIONS ; 
 int /*<<< orphan*/  SDLA_ENABLE_COMMUNICATIONS ; 
 int /*<<< orphan*/  SDLA_SET_DLCI_CONFIGURATION ; 
 int /*<<< orphan*/  FUNC0 (struct conf_data*,int /*<<< orphan*/ *,int) ; 
 struct frad_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct conf_data*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct frad_local *flp;
	struct conf_data  data;
	int               i, len;

	flp = FUNC1(dev);

	len = 0;
	for(i=0;i<CONFIG_DLCI_MAX;i++)
		if (flp->dlci[i])
			data.dlci[len++] = flp->dlci[i];
	len *= 2;

	FUNC0(&data, &flp->config, sizeof(struct frad_conf));
	len += sizeof(struct frad_conf);

	FUNC2(dev, SDLA_DISABLE_COMMUNICATIONS, 0, 0, NULL, 0, NULL, NULL);
	FUNC2(dev, SDLA_SET_DLCI_CONFIGURATION, 0, 0, &data, len, NULL, NULL);
	FUNC2(dev, SDLA_ENABLE_COMMUNICATIONS, 0, 0, NULL, 0, NULL, NULL);

	return 0;
}