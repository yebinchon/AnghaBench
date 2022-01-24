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
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
 struct net_device* FUNC0 (struct net_device*) ; 

__attribute__((used)) static bool FUNC1(struct net_device *ol_dev)
{
	struct net_device *ul_dev = FUNC0(ol_dev);

	return ul_dev ? (ul_dev->flags & IFF_UP) : true;
}