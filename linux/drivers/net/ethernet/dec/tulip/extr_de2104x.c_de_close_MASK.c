#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct de_private {TYPE_1__* pdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  media_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ifdown ; 
 struct de_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct de_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11 (struct net_device *dev)
{
	struct de_private *de = FUNC5(dev);
	unsigned long flags;

	FUNC7(de, ifdown, dev, "disabling interface\n");

	FUNC3(&de->media_timer);

	FUNC9(&de->lock, flags);
	FUNC2(de);
	FUNC8(dev);
	FUNC6(dev);
	FUNC10(&de->lock, flags);

	FUNC4(de->pdev->irq, dev);

	FUNC1(de);
	FUNC0(de);
	return 0;
}