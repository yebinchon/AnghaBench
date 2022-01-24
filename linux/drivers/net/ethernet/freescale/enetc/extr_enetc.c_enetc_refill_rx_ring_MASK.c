#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ lstatus; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
union enetc_rx_bd {TYPE_3__ r; TYPE_2__ w; } ;
struct enetc_rx_swbd {scalar_t__ page_offset; scalar_t__ dma; int /*<<< orphan*/  page; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_alloc_errs; } ;
struct enetc_bdr {int next_to_use; int bd_count; int next_to_alloc; int /*<<< orphan*/  rcir; struct enetc_rx_swbd* rx_swbd; TYPE_1__ stats; } ;

/* Variables and functions */
 union enetc_rx_bd* FUNC0 (struct enetc_bdr,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_bdr*,struct enetc_rx_swbd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct enetc_bdr *rx_ring, const int buff_cnt)
{
	struct enetc_rx_swbd *rx_swbd;
	union enetc_rx_bd *rxbd;
	int i, j;

	i = rx_ring->next_to_use;
	rx_swbd = &rx_ring->rx_swbd[i];
	rxbd = FUNC0(*rx_ring, i);

	for (j = 0; j < buff_cnt; j++) {
		/* try reuse page */
		if (FUNC5(!rx_swbd->page)) {
			if (FUNC5(!FUNC2(rx_ring, rx_swbd))) {
				rx_ring->stats.rx_alloc_errs++;
				break;
			}
		}

		/* update RxBD */
		rxbd->w.addr = FUNC1(rx_swbd->dma +
					   rx_swbd->page_offset);
		/* clear 'R" as well */
		rxbd->r.lstatus = 0;

		rx_swbd++;
		rxbd++;
		i++;
		if (FUNC5(i == rx_ring->bd_count)) {
			i = 0;
			rx_swbd = rx_ring->rx_swbd;
			rxbd = FUNC0(*rx_ring, 0);
		}
	}

	if (FUNC4(j)) {
		rx_ring->next_to_alloc = i; /* keep track from page reuse */
		rx_ring->next_to_use = i;
		/* update ENETC's consumer index */
		FUNC3(rx_ring->rcir, i);
	}

	return j;
}