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
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct ip_tunnel {TYPE_1__ parms; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (struct net_device const*) ; 
 struct ip_tunnel* FUNC2 (struct net_device const*) ; 

__attribute__((used)) static struct net_device *
FUNC3(const struct net_device *ol_dev)
{
	struct ip_tunnel *tun = FUNC2(ol_dev);
	struct net *net = FUNC1(ol_dev);

	return FUNC0(net, tun->parms.link);
}