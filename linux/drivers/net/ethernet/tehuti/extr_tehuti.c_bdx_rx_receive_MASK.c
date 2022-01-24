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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  pktsz; } ;
struct rxf_fifo {TYPE_1__ m; } ;
struct rxdb {int dummy; } ;
struct TYPE_6__ {int wptr; int rptr; int memsz; int /*<<< orphan*/  reg_RPTR; scalar_t__ va; int /*<<< orphan*/  reg_WPTR; } ;
struct rxd_fifo {TYPE_3__ m; } ;
struct rxd_desc {int /*<<< orphan*/  va_lo; int /*<<< orphan*/  rxd_vlan; int /*<<< orphan*/  len; int /*<<< orphan*/  rxd_val1; } ;
struct rx_map {int /*<<< orphan*/  dma; struct sk_buff* skb; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct bdx_priv {struct rxf_fifo rxf_fifo0; int /*<<< orphan*/  pdev; struct net_device* ndev; struct rxdb* rxdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BDX_COPYBREAK ; 
 int BDX_MAX_RX_DONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  ENTER ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bdx_priv*,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int FUNC8 (struct bdx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int TXF_WPTR_WR_PTR ; 
 int /*<<< orphan*/  FUNC10 (struct bdx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bdx_priv*,struct rxd_desc*) ; 
 int /*<<< orphan*/  FUNC12 (struct bdx_priv*,struct rxf_fifo*) ; 
 struct rx_map* FUNC13 (struct rxdb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rxdb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,int) ; 
 struct sk_buff* FUNC17 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rxd_desc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC24 (int) ; 

__attribute__((used)) static int FUNC25(struct bdx_priv *priv, struct rxd_fifo *f, int budget)
{
	struct net_device *ndev = priv->ndev;
	struct sk_buff *skb, *skb2;
	struct rxd_desc *rxdd;
	struct rx_map *dm;
	struct rxf_fifo *rxf_fifo;
	int tmp_len, size;
	int done = 0;
	int max_done = BDX_MAX_RX_DONE;
	struct rxdb *db = NULL;
	/* Unmarshalled descriptor - copy of descriptor in host order */
	u32 rxd_val1;
	u16 len;
	u16 rxd_vlan;

	ENTER;
	max_done = budget;

	f->m.wptr = FUNC8(priv, f->m.reg_WPTR) & TXF_WPTR_WR_PTR;

	size = f->m.wptr - f->m.rptr;
	if (size < 0)
		size = f->m.memsz + size;	/* size is negative :-) */

	while (size > 0) {

		rxdd = (struct rxd_desc *)(f->m.va + f->m.rptr);
		rxd_val1 = FUNC2(rxdd->rxd_val1);

		len = FUNC1(rxdd->len);

		rxd_vlan = FUNC1(rxdd->rxd_vlan);

		FUNC20(rxdd, rxd_val1, len, rxd_vlan);

		tmp_len = FUNC4(rxd_val1) << 3;
		FUNC0(tmp_len <= 0);
		size -= tmp_len;
		if (size < 0)	/* test for partially arrived descriptor */
			break;

		f->m.rptr += tmp_len;

		tmp_len = f->m.rptr - f->m.memsz;
		if (FUNC24(tmp_len >= 0)) {
			f->m.rptr = tmp_len;
			if (tmp_len > 0) {
				FUNC3("wrapped desc rptr=%d tmp_len=%d\n",
				    f->m.rptr, tmp_len);
				FUNC16(f->m.va + f->m.memsz, f->m.va, tmp_len);
			}
		}

		if (FUNC24(FUNC5(rxd_val1))) {
			FUNC3("rxd_err = 0x%x\n", FUNC5(rxd_val1));
			ndev->stats.rx_errors++;
			FUNC11(priv, rxdd);
			continue;
		}

		rxf_fifo = &priv->rxf_fifo0;
		db = priv->rxdb;
		dm = FUNC13(db, rxdd->va_lo);
		skb = dm->skb;

		if (len < BDX_COPYBREAK &&
		    (skb2 = FUNC17(priv->ndev, len + NET_IP_ALIGN))) {
			FUNC23(skb2, NET_IP_ALIGN);
			/*skb_put(skb2, len); */
			FUNC18(priv->pdev,
						    dm->dma, rxf_fifo->m.pktsz,
						    PCI_DMA_FROMDEVICE);
			FUNC16(skb2->data, skb->data, len);
			FUNC11(priv, rxdd);
			skb = skb2;
		} else {
			FUNC19(priv->pdev,
					 dm->dma, rxf_fifo->m.pktsz,
					 PCI_DMA_FROMDEVICE);
			FUNC14(db, rxdd->va_lo);
		}

		ndev->stats.rx_bytes += len;

		FUNC22(skb, len);
		skb->protocol = FUNC15(skb, ndev);

		/* Non-IP packets aren't checksum-offloaded */
		if (FUNC6(rxd_val1) == 0)
			FUNC21(skb);
		else
			skb->ip_summed = CHECKSUM_UNNECESSARY;

		FUNC7(priv, rxd_val1, rxd_vlan, skb);

		if (++done >= max_done)
			break;
	}

	ndev->stats.rx_packets += done;

	/* FIXME: do smth to minimize pci accesses    */
	FUNC10(priv, f->m.reg_RPTR, f->m.rptr & TXF_WPTR_WR_PTR);

	FUNC12(priv, &priv->rxf_fifo0);

	FUNC9(done);
}