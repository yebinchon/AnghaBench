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
struct ethtool_wolinfo {int /*<<< orphan*/  sopass; scalar_t__ supported; scalar_t__ wolopts; } ;

/* Variables and functions */
 scalar_t__ WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
			      struct ethtool_wolinfo *wol)
{
	if (0 <= FUNC1(2, 2, 0))
		wol->supported = WAKE_MAGIC;
	else
		wol->supported = 0;

	wol->wolopts = FUNC2() ? wol->supported : 0;
	FUNC0(&wol->sopass, 0, sizeof(wol->sopass));
}