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
typedef  unsigned long u32 ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {unsigned long q_num; TYPE_4__** qs; TYPE_1__* dev; } ;
struct hnae_ae_ops {unsigned long (* get_regs_len ) (struct hnae_handle*) ;int /*<<< orphan*/  (* get_regs ) (struct hnae_handle*,unsigned long*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  next_to_use; int /*<<< orphan*/  next_to_clean; } ;
struct TYPE_6__ {int /*<<< orphan*/  next_to_use; int /*<<< orphan*/  next_to_clean; } ;
struct TYPE_8__ {TYPE_3__ rx_ring; TYPE_2__ tx_ring; } ;
struct TYPE_5__ {struct hnae_ae_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long* FUNC0 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,...) ; 
 unsigned long FUNC3 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae_handle*,unsigned long*) ; 

__attribute__((used)) static void FUNC5(struct hns_nic_priv *priv)
{
	struct hnae_handle *h = priv->ae_handle;
	struct hnae_ae_ops *ops = h->dev->ops;
	u32 *data, reg_num, i;

	if (ops->get_regs_len && ops->get_regs) {
		reg_num = ops->get_regs_len(priv->ae_handle);
		reg_num = (reg_num + 3ul) & ~3ul;
		data = FUNC0(reg_num, sizeof(u32), GFP_KERNEL);
		if (data) {
			ops->get_regs(priv->ae_handle, data);
			for (i = 0; i < reg_num; i += 4)
				FUNC2("0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n",
					i, data[i], data[i + 1],
					data[i + 2], data[i + 3]);
			FUNC1(data);
		}
	}

	for (i = 0; i < h->q_num; i++) {
		FUNC2("tx_queue%d_next_to_clean:%d\n",
			i, h->qs[i]->tx_ring.next_to_clean);
		FUNC2("tx_queue%d_next_to_use:%d\n",
			i, h->qs[i]->tx_ring.next_to_use);
		FUNC2("rx_queue%d_next_to_clean:%d\n",
			i, h->qs[i]->rx_ring.next_to_clean);
		FUNC2("rx_queue%d_next_to_use:%d\n",
			i, h->qs[i]->rx_ring.next_to_use);
	}
}