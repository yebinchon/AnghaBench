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
struct netvsc_device {scalar_t__ destroy; } ;
struct net_device_context {int /*<<< orphan*/  vf_netdev; int /*<<< orphan*/  nvdev; } ;
struct net_device {int features; int wanted_features; } ;
struct ndis_offload_params {void* rsc_ip_v6; void* rsc_ip_v4; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int ENODEV ; 
 void* NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED ; 
 void* NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED ; 
 int NETIF_F_LRO ; 
 int /*<<< orphan*/  FUNC0 (struct ndis_offload_params*,int /*<<< orphan*/ ,int) ; 
 struct net_device_context* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,struct netvsc_device*,struct ndis_offload_params*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev,
			       netdev_features_t features)
{
	netdev_features_t change = features ^ ndev->features;
	struct net_device_context *ndevctx = FUNC1(ndev);
	struct netvsc_device *nvdev = FUNC4(ndevctx->nvdev);
	struct net_device *vf_netdev = FUNC4(ndevctx->vf_netdev);
	struct ndis_offload_params offloads;
	int ret = 0;

	if (!nvdev || nvdev->destroy)
		return -ENODEV;

	if (!(change & NETIF_F_LRO))
		goto syncvf;

	FUNC0(&offloads, 0, sizeof(struct ndis_offload_params));

	if (features & NETIF_F_LRO) {
		offloads.rsc_ip_v4 = NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED;
		offloads.rsc_ip_v6 = NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED;
	} else {
		offloads.rsc_ip_v4 = NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED;
		offloads.rsc_ip_v6 = NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED;
	}

	ret = FUNC3(ndev, nvdev, &offloads);

	if (ret) {
		features ^= NETIF_F_LRO;
		ndev->features = features;
	}

syncvf:
	if (!vf_netdev)
		return ret;

	vf_netdev->wanted_features = features;
	FUNC2(vf_netdev);

	return ret;
}