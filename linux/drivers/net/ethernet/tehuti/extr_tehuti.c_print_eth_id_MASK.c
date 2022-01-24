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
struct net_device {scalar_t__ if_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDX_NIC_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC1(struct net_device *ndev)
{
	FUNC0(ndev, "%s, Port %c\n",
		    BDX_NIC_NAME, (ndev->if_port == 0) ? 'A' : 'B');

}