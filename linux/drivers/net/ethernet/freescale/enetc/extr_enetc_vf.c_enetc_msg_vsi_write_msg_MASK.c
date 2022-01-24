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
struct enetc_msg_swbd {int /*<<< orphan*/  dma; int /*<<< orphan*/  size; } ;
struct enetc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_VSIMSGSNDAR0 ; 
 int /*<<< orphan*/  ENETC_VSIMSGSNDAR1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct enetc_hw *hw,
				    struct enetc_msg_swbd *msg)
{
	u32 val;

	val = FUNC0(msg->size) | FUNC2(msg->dma);
	FUNC1(hw, ENETC_VSIMSGSNDAR1, FUNC3(msg->dma));
	FUNC1(hw, ENETC_VSIMSGSNDAR0, val);
}