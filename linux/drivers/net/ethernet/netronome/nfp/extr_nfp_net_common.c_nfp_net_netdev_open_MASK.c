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
struct TYPE_2__ {int /*<<< orphan*/  num_rx_rings; int /*<<< orphan*/  num_stack_tx_rings; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*) ; 
 int FUNC4 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*) ; 
 int FUNC6 (struct nfp_net*) ; 
 int FUNC7 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct nfp_net *nn = FUNC0(netdev);
	int err;

	/* Step 1: Allocate resources for rings and the like
	 * - Request interrupts
	 * - Allocate RX and TX ring resources
	 * - Setup initial RSS table
	 */
	err = FUNC4(nn);
	if (err)
		return err;

	err = FUNC2(netdev, nn->dp.num_stack_tx_rings);
	if (err)
		goto err_free_all;

	err = FUNC1(netdev, nn->dp.num_rx_rings);
	if (err)
		goto err_free_all;

	/* Step 2: Configure the NFP
	 * - Ifup the physical interface if it exists
	 * - Enable rings from 0 to tx_rings/rx_rings - 1.
	 * - Write MAC address (in case it changed)
	 * - Set the MTU
	 * - Set the Freelist buffer size
	 * - Enable the FW
	 */
	err = FUNC7(netdev, true);
	if (err)
		goto err_free_all;

	err = FUNC6(nn);
	if (err)
		goto err_port_disable;

	/* Step 3: Enable for kernel
	 * - put some freelist descriptors on each RX ring
	 * - enable NAPI on each ring
	 * - enable all TX queues
	 * - set link state
	 */
	FUNC5(nn);

	return 0;

err_port_disable:
	FUNC7(netdev, false);
err_free_all:
	FUNC3(nn);
	return err;
}