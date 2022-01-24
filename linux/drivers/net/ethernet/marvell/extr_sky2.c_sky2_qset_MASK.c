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
typedef  int /*<<< orphan*/  u16 ;
struct sky2_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMU_CLR_RESET ; 
 int /*<<< orphan*/  BMU_FIFO_OP_ON ; 
 int /*<<< orphan*/  BMU_OPER_INIT ; 
 int /*<<< orphan*/  BMU_WM_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int /*<<< orphan*/  Q_WM ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sky2_hw *hw, u16 q)
{
	FUNC1(hw, FUNC0(q, Q_CSR), BMU_CLR_RESET);
	FUNC1(hw, FUNC0(q, Q_CSR), BMU_OPER_INIT);
	FUNC1(hw, FUNC0(q, Q_CSR), BMU_FIFO_OP_ON);
	FUNC1(hw, FUNC0(q, Q_WM),  BMU_WM_DEFAULT);
}