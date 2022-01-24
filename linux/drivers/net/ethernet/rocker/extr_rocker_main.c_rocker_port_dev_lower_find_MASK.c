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
struct rocker_walk_data {struct rocker_port* port; struct rocker* rocker; } ;
struct rocker_port {int dummy; } ;
struct rocker {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct rocker_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,struct rocker_walk_data*) ; 
 int /*<<< orphan*/  rocker_lower_dev_walk ; 
 scalar_t__ FUNC2 (struct net_device*,struct rocker*) ; 

struct rocker_port *FUNC3(struct net_device *dev,
					       struct rocker *rocker)
{
	struct rocker_walk_data data;

	if (FUNC2(dev, rocker))
		return FUNC0(dev);

	data.rocker = rocker;
	data.port = NULL;
	FUNC1(dev, rocker_lower_dev_walk, &data);

	return data.port;
}