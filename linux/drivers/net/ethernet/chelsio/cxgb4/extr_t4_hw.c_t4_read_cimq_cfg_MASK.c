#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int CIM_NUM_IBQ ; 
 int CIM_NUM_OBQ ; 
 int CIM_NUM_OBQ_T5 ; 
 int /*<<< orphan*/  CIM_QUEUE_CONFIG_CTRL_A ; 
 int /*<<< orphan*/  CIM_QUEUE_CONFIG_REF_A ; 
 int IBQSELECT_F ; 
 int OBQSELECT_F ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct adapter *adap, u16 *base, u16 *size, u16 *thres)
{
	unsigned int i, v;
	int cim_num_obq = FUNC4(adap->params.chip) ?
				CIM_NUM_OBQ : CIM_NUM_OBQ_T5;

	for (i = 0; i < CIM_NUM_IBQ; i++) {
		FUNC6(adap, CIM_QUEUE_CONFIG_REF_A, IBQSELECT_F |
			     FUNC3(i));
		v = FUNC5(adap, CIM_QUEUE_CONFIG_CTRL_A);
		/* value is in 256-byte units */
		*base++ = FUNC0(v) * 256;
		*size++ = FUNC1(v) * 256;
		*thres++ = FUNC2(v) * 8; /* 8-byte unit */
	}
	for (i = 0; i < cim_num_obq; i++) {
		FUNC6(adap, CIM_QUEUE_CONFIG_REF_A, OBQSELECT_F |
			     FUNC3(i));
		v = FUNC5(adap, CIM_QUEUE_CONFIG_CTRL_A);
		/* value is in 256-byte units */
		*base++ = FUNC0(v) * 256;
		*size++ = FUNC1(v) * 256;
	}
}