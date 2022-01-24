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
struct virtnet_info {int /*<<< orphan*/  node_dead; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_VIRT_NET_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtionet_online ; 

__attribute__((used)) static void FUNC1(struct virtnet_info *vi)
{
	FUNC0(virtionet_online, &vi->node);
	FUNC0(CPUHP_VIRT_NET_DEAD,
					    &vi->node_dead);
}