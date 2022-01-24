#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  long u16 ;
struct sk_buff {scalar_t__ data; } ;
struct brcmf_sdio {unsigned long head_align; scalar_t__ tx_hdrlen; TYPE_2__* sdiodev; } ;
struct brcmf_bus_stats {int /*<<< orphan*/  pktcow_failed; int /*<<< orphan*/  pktcowed; } ;
struct TYPE_4__ {TYPE_1__* bus_if; } ;
struct TYPE_3__ {struct brcmf_bus_stats stats; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct sk_buff*,long) ; 
 long FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,long) ; 

__attribute__((used)) static int FUNC5(struct brcmf_sdio *bus, struct sk_buff *pkt)
{
	struct brcmf_bus_stats *stats;
	u16 head_pad;
	u8 *dat_buf;

	dat_buf = (u8 *)(pkt->data);

	/* Check head padding */
	head_pad = ((unsigned long)dat_buf % bus->head_align);
	if (head_pad) {
		if (FUNC3(pkt) < head_pad) {
			stats = &bus->sdiodev->bus_if->stats;
			FUNC0(&stats->pktcowed);
			if (FUNC2(pkt, head_pad)) {
				FUNC0(&stats->pktcow_failed);
				return -ENOMEM;
			}
			head_pad = 0;
		}
		FUNC4(pkt, head_pad);
		dat_buf = (u8 *)(pkt->data);
	}
	FUNC1(dat_buf, 0, head_pad + bus->tx_hdrlen);
	return head_pad;
}