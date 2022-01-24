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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct dev_priv {int /*<<< orphan*/  mii_if; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct dev_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC2(struct net_device *dev)
{
	struct dev_priv *priv = FUNC1(dev);
	int rc;

	rc = FUNC0(&priv->mii_if);
	return rc;
}