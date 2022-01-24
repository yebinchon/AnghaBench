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
typedef  int /*<<< orphan*/  u32 ;
struct xlgmac_pdata {unsigned int tx_q_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTL_Q_TQOMR ; 
 int /*<<< orphan*/  MTL_Q_TQOMR_TTC_LEN ; 
 int /*<<< orphan*/  MTL_Q_TQOMR_TTC_POS ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_pdata*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xlgmac_pdata *pdata,
				      unsigned int val)
{
	unsigned int i;
	u32 regval;

	for (i = 0; i < pdata->tx_q_count; i++) {
		regval = FUNC2(FUNC0(pdata, i, MTL_Q_TQOMR));
		regval = FUNC1(regval, MTL_Q_TQOMR_TTC_POS,
					     MTL_Q_TQOMR_TTC_LEN, val);
		FUNC3(regval, FUNC0(pdata, i, MTL_Q_TQOMR));
	}

	return 0;
}