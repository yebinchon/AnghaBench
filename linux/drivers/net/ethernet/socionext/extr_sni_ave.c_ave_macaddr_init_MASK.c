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
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_PFNUM_UNICAST ; 
 int /*<<< orphan*/  AVE_RXMAC1R ; 
 int /*<<< orphan*/  AVE_RXMAC2R ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev)
{
	FUNC0(ndev, ndev->dev_addr, AVE_RXMAC1R, AVE_RXMAC2R);

	/* pfsel unicast entry */
	FUNC1(ndev, AVE_PFNUM_UNICAST, ndev->dev_addr, 6);
}