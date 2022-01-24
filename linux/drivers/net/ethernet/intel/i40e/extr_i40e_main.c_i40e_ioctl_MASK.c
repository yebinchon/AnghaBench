#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct i40e_pf {int dummy; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCGHWTSTAMP 129 
#define  SIOCSHWTSTAMP 128 
 int FUNC0 (struct i40e_pf*,struct ifreq*) ; 
 int FUNC1 (struct i40e_pf*,struct ifreq*) ; 
 struct i40e_netdev_priv* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
	struct i40e_netdev_priv *np = FUNC2(netdev);
	struct i40e_pf *pf = np->vsi->back;

	switch (cmd) {
	case SIOCGHWTSTAMP:
		return FUNC0(pf, ifr);
	case SIOCSHWTSTAMP:
		return FUNC1(pf, ifr);
	default:
		return -EOPNOTSUPP;
	}
}