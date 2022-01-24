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
struct greth_private {int /*<<< orphan*/  irq; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct greth_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct greth_private *greth = FUNC6(dev);

	FUNC5(&greth->napi);

	FUNC2(greth);
	FUNC4(greth);
	FUNC3(greth);

	FUNC7(dev);

	FUNC0(greth->irq, (void *) dev);

	FUNC1(greth);

	return 0;
}