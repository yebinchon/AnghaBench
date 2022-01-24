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
typedef  int /*<<< orphan*/  u8 ;
struct nfp_crypto_req_add_front {int /*<<< orphan*/  ipver_vlan; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFP_NET_TLS_IPVER ; 
 int /*<<< orphan*/  NFP_NET_TLS_VLAN ; 
 int /*<<< orphan*/  NFP_NET_TLS_VLAN_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct nfp_crypto_req_add_front *front, u8 ipver)
{
	front->ipver_vlan = FUNC1(FUNC0(NFP_NET_TLS_IPVER, ipver) |
					FUNC0(NFP_NET_TLS_VLAN,
						   NFP_NET_TLS_VLAN_UNUSED));
}