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
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPO2 ; 
 int FUNC1 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct aq_hw_s*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct aq_hw_s *self)
{
	FUNC6(self, 0x0FF6U);
	FUNC8(self, 0x0FF6U);
	FUNC7(self, 0x0F7FU);

	/* Tx interrupts */
	FUNC5(self, 1U);

	/* misc */
	FUNC2(self, 0x00007040U, FUNC0(TPO2) ?
			0x00010000U : 0x00000000U);
	FUNC3(self, 0U);
	FUNC4(self, 0U);

	FUNC9(self, 1U);

	return FUNC1(self);
}