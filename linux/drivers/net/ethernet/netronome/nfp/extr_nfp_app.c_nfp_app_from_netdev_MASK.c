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
struct nfp_repr {struct nfp_app* app; } ;
struct nfp_net {struct nfp_app* app; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 void* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

struct nfp_app *FUNC4(struct net_device *netdev)
{
	if (FUNC2(netdev)) {
		struct nfp_net *nn = FUNC1(netdev);

		return nn->app;
	}

	if (FUNC3(netdev)) {
		struct nfp_repr *repr = FUNC1(netdev);

		return repr->app;
	}

	FUNC0(1, "Unknown netdev type for nfp_app\n");

	return NULL;
}