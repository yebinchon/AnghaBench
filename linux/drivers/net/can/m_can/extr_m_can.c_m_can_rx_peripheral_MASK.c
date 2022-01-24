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
struct m_can_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 struct m_can_classdev* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct m_can_classdev *cdev = FUNC2(dev);

	FUNC1(dev, 1);

	FUNC0(cdev);

	return 0;
}