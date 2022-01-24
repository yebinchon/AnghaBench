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
typedef  int u64 ;
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SYS_ERR_MASK_FFLP ; 
 int SYS_ERR_MASK_IPP ; 
 int SYS_ERR_MASK_MAC ; 
 int SYS_ERR_MASK_META1 ; 
 int SYS_ERR_MASK_META2 ; 
 int SYS_ERR_MASK_PEU ; 
 int SYS_ERR_MASK_RDMC ; 
 int SYS_ERR_MASK_SMX ; 
 int SYS_ERR_MASK_TDMC ; 
 int SYS_ERR_MASK_TXC ; 
 int SYS_ERR_MASK_ZCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct niu *np, u64 stat)
{
	FUNC0(np->dev, "Core device errors ( ");

	if (stat & SYS_ERR_MASK_META2)
		FUNC1("META2 ");
	if (stat & SYS_ERR_MASK_META1)
		FUNC1("META1 ");
	if (stat & SYS_ERR_MASK_PEU)
		FUNC1("PEU ");
	if (stat & SYS_ERR_MASK_TXC)
		FUNC1("TXC ");
	if (stat & SYS_ERR_MASK_RDMC)
		FUNC1("RDMC ");
	if (stat & SYS_ERR_MASK_TDMC)
		FUNC1("TDMC ");
	if (stat & SYS_ERR_MASK_ZCP)
		FUNC1("ZCP ");
	if (stat & SYS_ERR_MASK_FFLP)
		FUNC1("FFLP ");
	if (stat & SYS_ERR_MASK_IPP)
		FUNC1("IPP ");
	if (stat & SYS_ERR_MASK_MAC)
		FUNC1("MAC ");
	if (stat & SYS_ERR_MASK_SMX)
		FUNC1("SMX ");

	FUNC1(")\n");
}