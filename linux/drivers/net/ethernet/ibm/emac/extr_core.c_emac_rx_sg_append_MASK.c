#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  rx_dropped_mtu; } ;
struct emac_instance {scalar_t__ rx_skb_size; TYPE_4__* rx_sg_skb; TYPE_3__** rx_skb; TYPE_2__ estats; TYPE_1__* rx_desc; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int data_len; } ;

/* Variables and functions */
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_instance*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline int FUNC7(struct emac_instance *dev, int slot)
{
	if (FUNC2(dev->rx_sg_skb != NULL)) {
		int len = dev->rx_desc[slot].data_len;
		int tot_len = dev->rx_sg_skb->len + len;

		if (FUNC6(tot_len + NET_IP_ALIGN > dev->rx_skb_size)) {
			++dev->estats.rx_dropped_mtu;
			FUNC0(dev->rx_sg_skb);
			dev->rx_sg_skb = NULL;
		} else {
			FUNC3(FUNC5(dev->rx_sg_skb),
					 dev->rx_skb[slot]->data, len);
			FUNC4(dev->rx_sg_skb, len);
			FUNC1(dev, slot, len);
			return 0;
		}
	}
	FUNC1(dev, slot, 0);
	return -1;
}