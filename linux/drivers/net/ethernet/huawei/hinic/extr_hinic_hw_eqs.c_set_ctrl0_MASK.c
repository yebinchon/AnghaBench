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
struct msix_entry {int /*<<< orphan*/  entry; } ;
struct hinic_eq {int type; int /*<<< orphan*/  hwif; int /*<<< orphan*/  q_id; struct msix_entry msix_entry; } ;
typedef  enum hinic_eq_type { ____Placeholder_hinic_eq_type } hinic_eq_type ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR ; 
 int /*<<< orphan*/  DMA_ATTR_AEQ_DEFAULT ; 
 int /*<<< orphan*/  DMA_ATTR_CEQ_DEFAULT ; 
 int /*<<< orphan*/  EQ_INT_MODE_ARMED ; 
 int HINIC_AEQ ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HINIC_CEQ ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTR_IDX ; 
 int /*<<< orphan*/  INTR_MODE ; 
 int /*<<< orphan*/  INT_IDX ; 
 int /*<<< orphan*/  INT_MODE ; 
 int /*<<< orphan*/  KICK_THRESH ; 
 int /*<<< orphan*/  PCI_INTF_IDX ; 
 int /*<<< orphan*/  THRESH_CEQ_DEFAULT ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC9(struct hinic_eq *eq)
{
	struct msix_entry *msix_entry = &eq->msix_entry;
	enum hinic_eq_type type = eq->type;
	u32 addr, val, ctrl0;

	if (type == HINIC_AEQ) {
		/* RMW Ctrl0 */
		addr = FUNC4(eq->q_id);

		val = FUNC7(eq->hwif, addr);

		val = FUNC0(val, INT_IDX)      &
		      FUNC0(val, DMA_ATTR)     &
		      FUNC0(val, PCI_INTF_IDX) &
		      FUNC0(val, INT_MODE);

		ctrl0 = FUNC1(msix_entry->entry, INT_IDX)     |
			FUNC1(DMA_ATTR_AEQ_DEFAULT, DMA_ATTR) |
			FUNC1(FUNC6(eq->hwif),
					     PCI_INTF_IDX)                   |
			FUNC1(EQ_INT_MODE_ARMED, INT_MODE);

		val |= ctrl0;

		FUNC8(eq->hwif, addr, val);
	} else if (type == HINIC_CEQ) {
		/* RMW Ctrl0 */
		addr = FUNC5(eq->q_id);

		val = FUNC7(eq->hwif, addr);

		val = FUNC2(val, INTR_IDX)     &
		      FUNC2(val, DMA_ATTR)     &
		      FUNC2(val, KICK_THRESH)  &
		      FUNC2(val, PCI_INTF_IDX) &
		      FUNC2(val, INTR_MODE);

		ctrl0 = FUNC3(msix_entry->entry, INTR_IDX)     |
			FUNC3(DMA_ATTR_CEQ_DEFAULT, DMA_ATTR)  |
			FUNC3(THRESH_CEQ_DEFAULT, KICK_THRESH) |
			FUNC3(FUNC6(eq->hwif),
					     PCI_INTF_IDX)                    |
			FUNC3(EQ_INT_MODE_ARMED, INTR_MODE);

		val |= ctrl0;

		FUNC8(eq->hwif, addr, val);
	}
}