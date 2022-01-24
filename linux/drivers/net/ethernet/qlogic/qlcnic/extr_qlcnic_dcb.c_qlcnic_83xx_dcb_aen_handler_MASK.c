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
struct qlcnic_dcb {int /*<<< orphan*/  aen_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int BIT_8 ; 
 int /*<<< orphan*/  QLCNIC_DCB_AEN_MODE ; 
 int /*<<< orphan*/  QLCNIC_DCB_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct qlcnic_dcb *dcb, void *data)
{
	u32 *val = data;

	if (FUNC3(QLCNIC_DCB_AEN_MODE, &dcb->state))
		return;

	if (*val & BIT_8)
		FUNC2(QLCNIC_DCB_STATE, &dcb->state);
	else
		FUNC0(QLCNIC_DCB_STATE, &dcb->state);

	FUNC1(dcb->wq, &dcb->aen_work, 0);
}