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
struct net_device {scalar_t__ phydev; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (scalar_t__,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev, struct ifreq *ifrq, int cmd)
{
	if (!(FUNC0(ndev)))
		return -EINVAL;

	/* TODO: Add phy read and write and private statistics get feature */

	if (ndev->phydev)
		return FUNC1(ndev->phydev, ifrq, cmd);
	else
		return -EOPNOTSUPP;
}