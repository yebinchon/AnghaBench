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
struct nfp_repr {int /*<<< orphan*/  app; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nfp_repr*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev)
{
	struct nfp_repr *repr = FUNC0(netdev);
	int err;

	err = FUNC1(repr->app, repr);
	if (err)
		return err;

	FUNC2(netdev, false);
	return 0;
}