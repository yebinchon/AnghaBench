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
typedef  scalar_t__ u64 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct s2io_nic {int /*<<< orphan*/  pdev; } ;
struct fifo_info {int max_txds; scalar_t__ ufo_in_band_v; struct s2io_nic* nic; } ;
struct TxD {scalar_t__ Host_Control; scalar_t__ Buffer_Pointer; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {size_t nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct TxD*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct fifo_info *fifo_data,
					struct TxD *txdlp, int get_off)
{
	struct s2io_nic *nic = fifo_data->nic;
	struct sk_buff *skb;
	struct TxD *txds;
	u16 j, frg_cnt;

	txds = txdlp;
	if (txds->Host_Control == (u64)(long)fifo_data->ufo_in_band_v) {
		FUNC2(nic->pdev, (dma_addr_t)txds->Buffer_Pointer,
				 sizeof(u64), PCI_DMA_TODEVICE);
		txds++;
	}

	skb = (struct sk_buff *)((unsigned long)txds->Host_Control);
	if (!skb) {
		FUNC0(txdlp, 0, (sizeof(struct TxD) * fifo_data->max_txds));
		return NULL;
	}
	FUNC2(nic->pdev, (dma_addr_t)txds->Buffer_Pointer,
			 FUNC4(skb), PCI_DMA_TODEVICE);
	frg_cnt = FUNC5(skb)->nr_frags;
	if (frg_cnt) {
		txds++;
		for (j = 0; j < frg_cnt; j++, txds++) {
			const skb_frag_t *frag = &FUNC5(skb)->frags[j];
			if (!txds->Buffer_Pointer)
				break;
			FUNC1(nic->pdev,
				       (dma_addr_t)txds->Buffer_Pointer,
				       FUNC3(frag), PCI_DMA_TODEVICE);
		}
	}
	FUNC0(txdlp, 0, (sizeof(struct TxD) * fifo_data->max_txds));
	return skb;
}