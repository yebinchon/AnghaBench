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
struct enetc_hw {int dummy; } ;
struct enetc_si {TYPE_1__* pdev; struct enetc_hw hw; } ;
struct enetc_pf {struct enetc_msg_swbd* rxmsg; } ;
struct enetc_msg_swbd {int /*<<< orphan*/  dma; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enetc_pf* FUNC3 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC4 (struct enetc_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_msg_swbd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct enetc_si *si, int idx)
{
	struct enetc_pf *pf = FUNC3(si);
	struct enetc_hw *hw = &si->hw;
	struct enetc_msg_swbd *msg;

	msg = &pf->rxmsg[idx];
	FUNC2(&si->pdev->dev, msg->size, msg->vaddr, msg->dma);
	FUNC5(msg, 0, sizeof(*msg));

	FUNC4(hw, FUNC0(idx), 0);
	FUNC4(hw, FUNC1(idx), 0);
}