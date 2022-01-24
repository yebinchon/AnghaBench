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
struct r8152 {int dummy; } ;

/* Variables and functions */
 int CR_RST ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_CR ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct r8152 *tp)
{
	int	i;

	FUNC1(tp, MCU_TYPE_PLA, PLA_CR, CR_RST);

	for (i = 0; i < 1000; i++) {
		if (!(FUNC0(tp, MCU_TYPE_PLA, PLA_CR) & CR_RST))
			break;
		FUNC2(100, 400);
	}
}