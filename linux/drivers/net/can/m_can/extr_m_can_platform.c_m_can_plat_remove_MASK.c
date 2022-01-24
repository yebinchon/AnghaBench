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
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct m_can_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_can_classdev*) ; 
 struct m_can_classdev* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct net_device *dev = FUNC2(pdev);
	struct m_can_classdev *mcan_class = FUNC1(dev);

	FUNC0(mcan_class);

	FUNC3(pdev, NULL);

	return 0;
}