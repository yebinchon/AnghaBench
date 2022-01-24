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
struct qlcnic_mailbox {int /*<<< orphan*/  status; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct qlcnic_mailbox *mbx)
{
	FUNC0(&mbx->completion);
	FUNC1(QLC_83XX_MBX_READY, &mbx->status);
}