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
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MVPP2_PRS_TCAM_HIT_CNT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_HIT_CNT_REG ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_HIT_IDX_REG ; 
 int MVPP2_PRS_TCAM_SRAM_SIZE ; 
 int FUNC0 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct mvpp2 *priv, int index)
{
	u32 val;

	if (index > MVPP2_PRS_TCAM_SRAM_SIZE)
		return -EINVAL;

	FUNC1(priv, MVPP2_PRS_TCAM_HIT_IDX_REG, index);

	val = FUNC0(priv, MVPP2_PRS_TCAM_HIT_CNT_REG);

	val &= MVPP2_PRS_TCAM_HIT_CNT_MASK;

	return val;
}