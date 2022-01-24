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
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ip_protocol ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  udp_dport ; 
 int /*<<< orphan*/  udp_sport ; 

__attribute__((used)) static void
FUNC2(void *headers_c, void *headers_v, __be16 psrc_m, __be16 psrc_v,
	__be16 pdst_m, __be16 pdst_v)
{
	if (psrc_m) {
		FUNC0(headers_c, udp_sport, FUNC1(psrc_m));
		FUNC0(headers_v, udp_sport, FUNC1(psrc_v));
	}

	if (pdst_m) {
		FUNC0(headers_c, udp_dport, FUNC1(pdst_m));
		FUNC0(headers_v, udp_dport, FUNC1(pdst_v));
	}

	FUNC0(headers_c, ip_protocol, 0xffff);
	FUNC0(headers_v, ip_protocol, IPPROTO_UDP);
}