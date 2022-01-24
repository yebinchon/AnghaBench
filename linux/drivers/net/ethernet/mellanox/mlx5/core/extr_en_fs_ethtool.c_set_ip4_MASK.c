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
typedef  int /*<<< orphan*/  ip4src_v ;
typedef  int /*<<< orphan*/  ip4src_m ;
typedef  int /*<<< orphan*/  ip4dst_v ;
typedef  int /*<<< orphan*/  ip4dst_m ;
typedef  scalar_t__ __be32 ;
struct TYPE_5__ {int /*<<< orphan*/  ipv4; } ;
struct TYPE_8__ {TYPE_1__ ipv4_layout; } ;
struct TYPE_6__ {int /*<<< orphan*/  ipv4; } ;
struct TYPE_7__ {TYPE_2__ ipv4_layout; } ;

/* Variables and functions */
 int ETH_P_IP ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__ dst_ipv4_dst_ipv6 ; 
 int /*<<< orphan*/  ethertype ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 TYPE_3__ src_ipv4_src_ipv6 ; 

__attribute__((used)) static void
FUNC3(void *headers_c, void *headers_v, __be32 ip4src_m,
	__be32 ip4src_v, __be32 ip4dst_m, __be32 ip4dst_v)
{
	if (ip4src_m) {
		FUNC2(FUNC0(headers_v, src_ipv4_src_ipv6.ipv4_layout.ipv4),
		       &ip4src_v, sizeof(ip4src_v));
		FUNC2(FUNC0(headers_c, src_ipv4_src_ipv6.ipv4_layout.ipv4),
		       &ip4src_m, sizeof(ip4src_m));
	}
	if (ip4dst_m) {
		FUNC2(FUNC0(headers_v, dst_ipv4_dst_ipv6.ipv4_layout.ipv4),
		       &ip4dst_v, sizeof(ip4dst_v));
		FUNC2(FUNC0(headers_c, dst_ipv4_dst_ipv6.ipv4_layout.ipv4),
		       &ip4dst_m, sizeof(ip4dst_m));
	}

	FUNC1(headers_c, ethertype, 0xffff);
	FUNC1(headers_v, ethertype, ETH_P_IP);
}