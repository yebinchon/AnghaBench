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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  blank ;

/* Variables and functions */
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev)
{
	u8 blank[ETH_ALEN];
	int entry;

	FUNC0(blank, 0, sizeof(blank));
	entry = FUNC1(ndev, blank);
	return (entry < 0) ? -ENOMEM : entry;
}