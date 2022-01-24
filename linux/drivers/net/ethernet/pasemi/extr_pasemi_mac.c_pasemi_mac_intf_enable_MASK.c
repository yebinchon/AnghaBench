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
struct pasemi_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAS_MAC_CFG_PCFG ; 
 unsigned int PAS_MAC_CFG_PCFG_PE ; 
 unsigned int FUNC0 (struct pasemi_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pasemi_mac*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct pasemi_mac *mac)
{
	unsigned int flags;

	flags = FUNC0(mac, PAS_MAC_CFG_PCFG);
	flags |= PAS_MAC_CFG_PCFG_PE;
	FUNC1(mac, PAS_MAC_CFG_PCFG, flags);
}