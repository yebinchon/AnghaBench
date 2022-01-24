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
typedef  int /*<<< orphan*/  rtl8150_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSCR ; 
 short CSCR_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,short*) ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	rtl8150_t *dev = FUNC1(netdev);
	short tmp;

	FUNC0(dev, CSCR, 2, &tmp);
	if (tmp & CSCR_LINK_STATUS)
		FUNC3(netdev);
	else
		FUNC2(netdev);
}