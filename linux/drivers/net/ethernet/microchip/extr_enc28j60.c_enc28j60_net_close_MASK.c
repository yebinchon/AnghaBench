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
struct enc28j60_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC1 (struct enc28j60_net*,int) ; 
 struct enc28j60_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct enc28j60_net *priv = FUNC2(dev);

	FUNC0(priv);
	FUNC1(priv, true);
	FUNC3(dev);

	return 0;
}