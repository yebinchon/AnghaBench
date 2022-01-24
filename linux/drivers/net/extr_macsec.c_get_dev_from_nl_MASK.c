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
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct nlattr*) ; 

__attribute__((used)) static struct net_device *FUNC4(struct net *net,
					  struct nlattr **attrs)
{
	int ifindex = FUNC3(attrs[MACSEC_ATTR_IFINDEX]);
	struct net_device *dev;

	dev = FUNC1(net, ifindex);
	if (!dev)
		return FUNC0(-ENODEV);

	if (!FUNC2(dev))
		return FUNC0(-ENODEV);

	return dev;
}