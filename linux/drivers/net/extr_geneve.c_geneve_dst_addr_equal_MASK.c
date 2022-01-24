#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dst; } ;
struct TYPE_5__ {scalar_t__ dst; } ;
struct TYPE_8__ {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct TYPE_7__ {TYPE_4__ u; } ;
struct ip_tunnel_info {TYPE_3__ key; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ FUNC0 (struct ip_tunnel_info*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct ip_tunnel_info *a,
				  struct ip_tunnel_info *b)
{
	if (FUNC0(a) == AF_INET)
		return a->key.u.ipv4.dst == b->key.u.ipv4.dst;
	else
		return FUNC1(&a->key.u.ipv6.dst, &b->key.u.ipv6.dst);
}