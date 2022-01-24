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
struct gfar_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gfar_private*) ; 
 int FUNC1 (struct net_device*) ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct gfar_private *priv = FUNC2(dev);
	int err;

	err = FUNC1(dev);
	if (err)
		return err;

	err = FUNC0(priv);
	if (err)
		return err;

	err = FUNC3(dev);
	if (err)
		return err;

	return err;
}