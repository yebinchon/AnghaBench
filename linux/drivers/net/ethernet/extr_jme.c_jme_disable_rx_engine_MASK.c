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
typedef  int u32 ;
struct jme_adapter {int /*<<< orphan*/  reg_rxcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_RXCS ; 
 int JME_RX_DISABLE_TIMEOUT ; 
 int RXCS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static inline void
FUNC7(struct jme_adapter *jme)
{
	int i;
	u32 val;

	/*
	 * Disable RX Engine
	 */
	FUNC2(jme, JME_RXCS, jme->reg_rxcs);
	FUNC6();

	val = FUNC1(jme, JME_RXCS);
	for (i = JME_RX_DISABLE_TIMEOUT ; (val & RXCS_ENABLE) && i > 0 ; --i) {
		FUNC3(1);
		val = FUNC1(jme, JME_RXCS);
		FUNC5();
	}

	if (!i)
		FUNC4("Disable RX engine timeout\n");

	/*
	 * Stop clock for RX MAC Processor
	 */
	FUNC0(jme);
}