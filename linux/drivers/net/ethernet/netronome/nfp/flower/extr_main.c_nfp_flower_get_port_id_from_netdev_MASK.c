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
typedef  int /*<<< orphan*/  u32 ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nfp_app*,struct net_device*) ; 
 scalar_t__ FUNC1 (struct nfp_app*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

u32 FUNC5(struct nfp_app *app,
				       struct net_device *netdev)
{
	int ext_port;

	if (FUNC3(netdev)) {
		return FUNC4(netdev);
	} else if (FUNC1(app, netdev)) {
		ext_port = FUNC0(app, netdev);
		if (ext_port < 0)
			return 0;

		return FUNC2(ext_port);
	}

	return 0;
}