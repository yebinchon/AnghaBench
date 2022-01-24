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
struct mvpp2_cls_flow_entry {int index; void** data; } ;
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_CLS_FLOW_INDEX_REG ; 
 int /*<<< orphan*/  MVPP2_CLS_FLOW_TBL0_REG ; 
 int /*<<< orphan*/  MVPP2_CLS_FLOW_TBL1_REG ; 
 int /*<<< orphan*/  MVPP2_CLS_FLOW_TBL2_REG ; 
 void* FUNC0 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct mvpp2 *priv, int index,
			 struct mvpp2_cls_flow_entry *fe)
{
	fe->index = index;
	FUNC1(priv, MVPP2_CLS_FLOW_INDEX_REG, index);
	fe->data[0] = FUNC0(priv, MVPP2_CLS_FLOW_TBL0_REG);
	fe->data[1] = FUNC0(priv, MVPP2_CLS_FLOW_TBL1_REG);
	fe->data[2] = FUNC0(priv, MVPP2_CLS_FLOW_TBL2_REG);
}