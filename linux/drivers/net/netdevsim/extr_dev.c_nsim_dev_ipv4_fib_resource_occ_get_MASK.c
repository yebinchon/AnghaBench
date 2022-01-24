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
typedef  int /*<<< orphan*/  u64 ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSIM_RESOURCE_IPV4_FIB ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u64 FUNC1(void *priv)
{
	struct net *net = priv;

	return FUNC0(net, NSIM_RESOURCE_IPV4_FIB, false);
}