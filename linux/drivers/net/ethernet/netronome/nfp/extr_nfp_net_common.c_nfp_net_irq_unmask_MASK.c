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
struct nfp_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NFP_NET_CFG_ICR_UNMASKED ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nfp_net *nn, unsigned int entry_nr)
{
	FUNC2(nn, FUNC0(entry_nr), NFP_NET_CFG_ICR_UNMASKED);
	FUNC1(nn);
}