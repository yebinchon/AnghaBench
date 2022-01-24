#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ first_desc; scalar_t__ last_desc; scalar_t__ hw_owned; } ;
union desc_stat {TYPE_4__ rx; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct ksz_desc_info {int alloc; int next; int mask; struct ksz_desc* ring; } ;
struct ksz_hw {struct ksz_desc_info rx_desc_info; TYPE_1__* port_info; } ;
struct ksz_desc {TYPE_3__* phw; } ;
struct dev_info {struct ksz_hw hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_2__ ctrl; } ;
struct TYPE_5__ {struct net_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_desc*) ; 
 scalar_t__ FUNC2 (struct net_device*,struct ksz_hw*,struct ksz_desc*,union desc_stat) ; 

__attribute__((used)) static int FUNC3(struct dev_info *hw_priv)
{
	int next;
	union desc_stat status;
	struct ksz_hw *hw = &hw_priv->hw;
	struct net_device *dev = hw->port_info[0].pdev;
	struct ksz_desc_info *info = &hw->rx_desc_info;
	int left = info->alloc;
	struct ksz_desc *desc;
	int received = 0;

	next = info->next;
	while (left--) {
		/* Get next descriptor which is not hardware owned. */
		desc = &info->ring[next];
		status.data = FUNC0(desc->phw->ctrl.data);
		if (status.rx.hw_owned)
			break;

		/* Status valid only when last descriptor bit is set. */
		if (status.rx.last_desc && status.rx.first_desc) {
			if (FUNC2(dev, hw, desc, status))
				goto release_packet;
			received++;
		}

release_packet:
		FUNC1(desc);
		next++;
		next &= info->mask;
	}
	info->next = next;

	return received;
}