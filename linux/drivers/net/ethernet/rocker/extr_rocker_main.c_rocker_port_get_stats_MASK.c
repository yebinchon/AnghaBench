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
typedef  scalar_t__ u64 ;
struct rocker_port {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rocker_port* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct rocker_port*,scalar_t__*) ; 
 int /*<<< orphan*/  rocker_port_stats ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				  struct ethtool_stats *stats, u64 *data)
{
	struct rocker_port *rocker_port = FUNC1(dev);

	if (FUNC2(rocker_port, data) != 0) {
		int i;

		for (i = 0; i < FUNC0(rocker_port_stats); ++i)
			data[i] = 0;
	}
}