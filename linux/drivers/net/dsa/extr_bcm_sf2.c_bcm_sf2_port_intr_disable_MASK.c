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
struct bcm_sf2_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTRL2_CPU_CLEAR ; 
 unsigned int P0_IRQ_OFF ; 
 unsigned int P7_IRQ_OFF ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct bcm_sf2_priv *priv,
					     int port)
{
	unsigned int off;

	switch (port) {
	case 7:
		off = P7_IRQ_OFF;
		break;
	case 0:
		/* Port 0 interrupts are located on the first bank */
		FUNC2(priv, FUNC0(P0_IRQ_OFF));
		FUNC3(priv, FUNC0(P0_IRQ_OFF), INTRL2_CPU_CLEAR);
		return;
	default:
		off = FUNC1(port);
		break;
	}

	FUNC4(priv, FUNC0(off));
	FUNC5(priv, FUNC0(off), INTRL2_CPU_CLEAR);
}