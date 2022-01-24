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
typedef  size_t u16 ;
struct pci_dev {int dummy; } ;
struct atl1c_tpd_ring {size_t count; int /*<<< orphan*/  next_to_clean; struct atl1c_buffer* buffer_info; } ;
struct atl1c_buffer {TYPE_1__* skb; } ;
struct atl1c_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  hw; struct pci_dev* pdev; struct atl1c_tpd_ring* tpd_ring; } ;
typedef  enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,size_t*) ; 
 size_t REG_TPD_PRI0_CIDX ; 
 size_t REG_TPD_PRI1_CIDX ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct atl1c_buffer*) ; 
 int atl1c_trans_high ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct atl1c_adapter *adapter,
				enum atl1c_trans_queue type)
{
	struct atl1c_tpd_ring *tpd_ring = &adapter->tpd_ring[type];
	struct atl1c_buffer *buffer_info;
	struct pci_dev *pdev = adapter->pdev;
	u16 next_to_clean = FUNC2(&tpd_ring->next_to_clean);
	u16 hw_next_to_clean;
	u16 reg;
	unsigned int total_bytes = 0, total_packets = 0;

	reg = type == atl1c_trans_high ? REG_TPD_PRI1_CIDX : REG_TPD_PRI0_CIDX;

	FUNC0(&adapter->hw, reg, &hw_next_to_clean);

	while (next_to_clean != hw_next_to_clean) {
		buffer_info = &tpd_ring->buffer_info[next_to_clean];
		if (buffer_info->skb) {
			total_bytes += buffer_info->skb->len;
			total_packets++;
		}
		FUNC1(pdev, buffer_info);
		if (++next_to_clean == tpd_ring->count)
			next_to_clean = 0;
		FUNC3(&tpd_ring->next_to_clean, next_to_clean);
	}

	FUNC4(adapter->netdev, total_packets, total_bytes);

	if (FUNC6(adapter->netdev) &&
			FUNC5(adapter->netdev)) {
		FUNC7(adapter->netdev);
	}

	return true;
}