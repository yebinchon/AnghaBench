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
struct nfp_net {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct nfp_net *nn = FUNC0(netdev);

	/* Step 1: Disable RX and TX rings from the Linux kernel perspective
	 */
	FUNC3(nn);

	/* Step 2: Tell NFP
	 */
	FUNC1(nn);
	FUNC4(netdev, false);

	/* Step 3: Free resources
	 */
	FUNC2(nn);

	FUNC5(nn, "%s down", netdev->name);
	return 0;
}