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
struct stm32_cec {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ALL_RX_IT ; 
 int ALL_TX_IT ; 
 int CECEN ; 
 int /*<<< orphan*/  CEC_CFGR ; 
 int /*<<< orphan*/  CEC_CR ; 
 int /*<<< orphan*/  CEC_IER ; 
 int FULL_CFG ; 
 int TXEOM ; 
 int TXSOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct stm32_cec *cec)
{
	FUNC0(cec->regmap, CEC_CR, TXEOM | TXSOM | CECEN, 0);

	FUNC0(cec->regmap, CEC_IER, ALL_TX_IT | ALL_RX_IT,
			   ALL_TX_IT | ALL_RX_IT);

	FUNC0(cec->regmap, CEC_CFGR, FULL_CFG, FULL_CFG);
}