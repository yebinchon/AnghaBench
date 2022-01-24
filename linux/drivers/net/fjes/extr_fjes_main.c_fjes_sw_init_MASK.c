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
struct fjes_adapter {int /*<<< orphan*/  napi; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  fjes_poll ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct fjes_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	FUNC0(netdev, &adapter->napi, fjes_poll, 64);

	return 0;
}