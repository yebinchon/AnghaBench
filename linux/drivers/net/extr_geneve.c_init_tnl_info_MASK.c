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
struct TYPE_2__ {int /*<<< orphan*/  tp_dst; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_tunnel_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ip_tunnel_info *info, __u16 dst_port)
{
	FUNC1(info, 0, sizeof(*info));
	info->key.tp_dst = FUNC0(dst_port);
}