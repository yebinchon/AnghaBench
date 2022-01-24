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
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*,int) ; 
 struct ag71xx* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev)
{
	struct ag71xx *ag = FUNC1(ndev);

	FUNC0(ag, true);
}