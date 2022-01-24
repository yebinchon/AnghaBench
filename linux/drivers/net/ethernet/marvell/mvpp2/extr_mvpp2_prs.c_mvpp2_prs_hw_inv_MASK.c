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
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_IDX_REG ; 
 int MVPP2_PRS_TCAM_INV_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_INV_WORD ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mvpp2 *priv, int index)
{
	/* Write index - indirect access */
	FUNC1(priv, MVPP2_PRS_TCAM_IDX_REG, index);
	FUNC1(priv, FUNC0(MVPP2_PRS_TCAM_INV_WORD),
		    MVPP2_PRS_TCAM_INV_MASK);
}