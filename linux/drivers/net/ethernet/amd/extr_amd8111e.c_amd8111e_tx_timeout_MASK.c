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
struct amd8111e_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct amd8111e_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct amd8111e_priv *lp = FUNC2(dev);
	int err;

	FUNC1(dev, "transmit timed out, resetting\n");

	FUNC4(&lp->lock);
	err = FUNC0(dev);
	FUNC5(&lp->lock);
	if(!err)
		FUNC3(dev);
}