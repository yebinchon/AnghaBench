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
typedef  int uint ;
struct lance_regs {int /*<<< orphan*/  rap; int /*<<< orphan*/  rdp; } ;
struct lance_private {int busmaster_regval; struct lance_regs* ll; } ;

/* Variables and functions */
 int LE_CSR0 ; 
 int LE_CSR1 ; 
 int LE_CSR2 ; 
 int LE_CSR3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct lance_private *lp)
{
	volatile struct lance_regs *ll = lp->ll;
	uint leptr;

	/* The address space as seen from the LANCE
	 * begins at address 0. HK
	 */
	leptr = 0;

	FUNC0(&ll->rap, LE_CSR1);
	FUNC0(&ll->rdp, (leptr & 0xFFFF));
	FUNC0(&ll->rap, LE_CSR2);
	FUNC0(&ll->rdp, leptr >> 16);
	FUNC0(&ll->rap, LE_CSR3);
	FUNC0(&ll->rdp, lp->busmaster_regval);

	/* Point back to csr0 */
	FUNC0(&ll->rap, LE_CSR0);
}