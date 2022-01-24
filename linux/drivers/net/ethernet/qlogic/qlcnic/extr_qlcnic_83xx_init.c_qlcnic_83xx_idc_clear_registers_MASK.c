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
struct qlcnic_adapter {int /*<<< orphan*/  ahw; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_CTRL ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DRV_ACK ; 
 int /*<<< orphan*/  QLC_83XX_IDC_GRACEFULL_RESET ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter,
					   int lock)
{
	u32 val;

	if (lock) {
		if (FUNC2(adapter))
			return -EBUSY;
	}

	FUNC1(adapter->ahw, QLC_83XX_IDC_DRV_ACK, 0);
	/* Clear graceful reset bit */
	val = FUNC0(adapter->ahw, QLC_83XX_IDC_CTRL);
	val &= ~QLC_83XX_IDC_GRACEFULL_RESET;
	FUNC1(adapter->ahw, QLC_83XX_IDC_CTRL, val);

	if (lock)
		FUNC3(adapter);

	return 0;
}