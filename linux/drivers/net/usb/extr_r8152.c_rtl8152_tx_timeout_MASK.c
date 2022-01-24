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
struct r8152 {int /*<<< orphan*/  intf; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct r8152* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  tx_err ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct r8152 *tp = FUNC0(netdev);

	FUNC1(tp, tx_err, netdev, "Tx timeout\n");

	FUNC2(tp->intf);
}