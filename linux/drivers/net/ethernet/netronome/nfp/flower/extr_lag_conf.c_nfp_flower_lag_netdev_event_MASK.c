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
struct nfp_fl_lag {int dummy; } ;
struct nfp_flower_priv {struct nfp_fl_lag nfp_lag; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  NETDEV_CHANGELOWERSTATE 130 
#define  NETDEV_CHANGEUPPER 129 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_fl_lag*,struct net_device*,void*) ; 
 int FUNC1 (struct nfp_fl_lag*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_fl_lag*,struct net_device*) ; 

int FUNC3(struct nfp_flower_priv *priv,
				struct net_device *netdev,
				unsigned long event, void *ptr)
{
	struct nfp_fl_lag *lag = &priv->nfp_lag;
	int err;

	switch (event) {
	case NETDEV_CHANGEUPPER:
		err = FUNC1(lag, ptr);
		if (err)
			return NOTIFY_BAD;
		return NOTIFY_OK;
	case NETDEV_CHANGELOWERSTATE:
		FUNC0(lag, netdev, ptr);
		return NOTIFY_OK;
	case NETDEV_UNREGISTER:
		FUNC2(lag, netdev);
		return NOTIFY_OK;
	}

	return NOTIFY_DONE;
}