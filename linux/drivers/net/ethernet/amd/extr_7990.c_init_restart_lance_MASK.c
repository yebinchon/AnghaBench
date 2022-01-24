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
struct lance_private {int dummy; } ;

/* Variables and functions */
 int LE_C0_ERR ; 
 int LE_C0_IDON ; 
 int LE_C0_INEA ; 
 int LE_C0_INIT ; 
 int LE_C0_STRT ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int FUNC0 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_private*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static int FUNC5(struct lance_private *lp)
{
	int i;

	FUNC1(lp, LE_CSR0);
	FUNC2(lp, LE_C0_INIT);

	/* Need a hook here for sunlance ledma stuff */

	/* Wait for the lance to complete initialization */
	for (i = 0; (i < 100) && !(FUNC0(lp) & (LE_C0_ERR | LE_C0_IDON)); i++)
		FUNC3();
	if ((i == 100) || (FUNC0(lp) & LE_C0_ERR)) {
		FUNC4("LANCE unopened after %d ticks, csr0=%4.4x.\n", i, FUNC0(lp));
		return -1;
	}

	/* Clear IDON by writing a "1", enable interrupts and start lance */
	FUNC2(lp, LE_C0_IDON);
	FUNC2(lp, LE_C0_INEA | LE_C0_STRT);

	return 0;
}