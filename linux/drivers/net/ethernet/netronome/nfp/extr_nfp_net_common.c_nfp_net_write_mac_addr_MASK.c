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
struct nfp_net {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFP_NET_CFG_MACADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nfp_net *nn, const u8 *addr)
{
	FUNC2(nn, NFP_NET_CFG_MACADDR + 0, FUNC1(addr));
	FUNC3(nn, NFP_NET_CFG_MACADDR + 6, FUNC0(addr + 4));
}