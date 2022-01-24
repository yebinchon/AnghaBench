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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const struct net_device *nve_dev, __be32 vni)
{
	if (FUNC0(!FUNC1(nve_dev)))
		return;
	FUNC2(nve_dev, vni);
}