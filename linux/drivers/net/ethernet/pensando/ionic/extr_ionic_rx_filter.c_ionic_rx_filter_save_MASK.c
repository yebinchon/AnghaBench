#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_13__ {int /*<<< orphan*/  vlan; } ;
struct TYPE_12__ {scalar_t__ addr; } ;
struct TYPE_11__ {int /*<<< orphan*/  vlan; } ;
struct ionic_rx_filter_add_cmd {TYPE_5__ mac_vlan; TYPE_4__ mac; TYPE_3__ vlan; int /*<<< orphan*/  match; } ;
struct ionic_rx_filter {unsigned int filter_id; int /*<<< orphan*/  by_id; int /*<<< orphan*/  by_hash; int /*<<< orphan*/  cmd; int /*<<< orphan*/  rxq_index; void* flow_id; } ;
struct TYPE_16__ {int /*<<< orphan*/  lock; struct hlist_head* by_id; struct hlist_head* by_hash; } ;
struct ionic_lif {TYPE_8__ rx_filters; TYPE_1__* ionic; } ;
struct TYPE_14__ {int /*<<< orphan*/  filter_id; } ;
struct TYPE_15__ {TYPE_6__ rx_filter_add; } ;
struct TYPE_10__ {struct ionic_rx_filter_add_cmd rx_filter_add; } ;
struct ionic_admin_ctx {TYPE_7__ comp; TYPE_2__ cmd; } ;
struct hlist_head {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IONIC_RX_FILTER_HASH_BITS ; 
 unsigned int IONIC_RX_FILTER_HLISTS_MASK ; 
#define  IONIC_RX_FILTER_MATCH_MAC 130 
#define  IONIC_RX_FILTER_MATCH_MAC_VLAN 129 
#define  IONIC_RX_FILTER_MATCH_VLAN 128 
 struct ionic_rx_filter* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ionic_rx_filter_add_cmd*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ionic_lif *lif, u32 flow_id, u16 rxq_index,
			 u32 hash, struct ionic_admin_ctx *ctx)
{
	struct device *dev = lif->ionic->dev;
	struct ionic_rx_filter_add_cmd *ac;
	struct ionic_rx_filter *f;
	struct hlist_head *head;
	unsigned int key;

	ac = &ctx->cmd.rx_filter_add;

	switch (FUNC4(ac->match)) {
	case IONIC_RX_FILTER_MATCH_VLAN:
		key = FUNC4(ac->vlan.vlan);
		break;
	case IONIC_RX_FILTER_MATCH_MAC:
		key = *(u32 *)ac->mac.addr;
		break;
	case IONIC_RX_FILTER_MATCH_MAC_VLAN:
		key = FUNC4(ac->mac_vlan.vlan);
		break;
	default:
		return -EINVAL;
	}

	f = FUNC1(dev, sizeof(*f), GFP_KERNEL);
	if (!f)
		return -ENOMEM;

	f->flow_id = flow_id;
	f->filter_id = FUNC5(ctx->comp.rx_filter_add.filter_id);
	f->rxq_index = rxq_index;
	FUNC6(&f->cmd, ac, sizeof(f->cmd));

	FUNC0(&f->by_hash);
	FUNC0(&f->by_id);

	FUNC7(&lif->rx_filters.lock);

	key = FUNC2(key, IONIC_RX_FILTER_HASH_BITS);
	head = &lif->rx_filters.by_hash[key];
	FUNC3(&f->by_hash, head);

	key = f->filter_id & IONIC_RX_FILTER_HLISTS_MASK;
	head = &lif->rx_filters.by_id[key];
	FUNC3(&f->by_id, head);

	FUNC8(&lif->rx_filters.lock);

	return 0;
}