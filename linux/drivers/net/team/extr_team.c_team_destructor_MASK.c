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
struct team {int /*<<< orphan*/  pcpu_stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct team* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct team *team = FUNC1(dev);

	FUNC0(team->pcpu_stats);
}