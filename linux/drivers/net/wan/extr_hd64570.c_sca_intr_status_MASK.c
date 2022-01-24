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
typedef  int u8 ;
typedef  int /*<<< orphan*/  card_t ;

/* Variables and functions */
 int DSR_EOM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ISR0 ; 
 int /*<<< orphan*/  ISR1 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(card_t *card)
{
	u8 result = 0;
	u8 isr0 = FUNC4(ISR0, card);
	u8 isr1 = FUNC4(ISR1, card);

	if (isr1 & 0x03) result |= FUNC1(0);
	if (isr1 & 0x0C) result |= FUNC2(0);
	if (isr1 & 0x30) result |= FUNC1(1);
	if (isr1 & 0xC0) result |= FUNC2(1);
	if (isr0 & 0x0F) result |= FUNC3(0);
	if (isr0 & 0xF0) result |= FUNC3(1);

	if (!(result & FUNC2(0)))
		if (FUNC4(FUNC0(0), card) & DSR_EOM)
			result |= FUNC2(0);
	if (!(result & FUNC2(1)))
		if (FUNC4(FUNC0(1), card) & DSR_EOM)
			result |= FUNC2(1);

	return result;
}