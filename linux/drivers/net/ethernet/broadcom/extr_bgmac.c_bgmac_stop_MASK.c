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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct bgmac {int /*<<< orphan*/  irq; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bgmac* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *net_dev)
{
	struct bgmac *bgmac = FUNC5(net_dev);

	FUNC6(net_dev);

	FUNC7(net_dev->phydev);

	FUNC4(&bgmac->napi);
	FUNC0(bgmac);
	FUNC3(bgmac->irq, net_dev);

	FUNC1(bgmac);
	FUNC2(bgmac);

	return 0;
}