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
struct jme_adapter {int reg_txcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_TXCS ; 
 int JME_TX_DISABLE_TIMEOUT ; 
 int TXCS_ENABLE ; 
 int TXCS_SELECT_QUEUE0 ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
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
	 * Disable TX Engine
	 */
	FUNC2(jme, JME_TXCS, jme->reg_txcs | TXCS_SELECT_QUEUE0);
	FUNC6();

	val = FUNC1(jme, JME_TXCS);
	for (i = JME_TX_DISABLE_TIMEOUT ; (val & TXCS_ENABLE) && i > 0 ; --i) {
		FUNC3(1);
		val = FUNC1(jme, JME_TXCS);
		FUNC5();
	}

	if (!i)
		FUNC4("Disable TX engine timeout\n");

	/*
	 * Stop clock for TX MAC Processor
	 */
	FUNC0(jme);
}