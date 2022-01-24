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
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct ftmac100 {int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int,int /*<<< orphan*/ *) ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 struct ftmac100* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
	struct ftmac100 *priv = FUNC2(netdev);
	struct mii_ioctl_data *data = FUNC1(ifr);

	return FUNC0(&priv->mii, data, cmd, NULL);
}