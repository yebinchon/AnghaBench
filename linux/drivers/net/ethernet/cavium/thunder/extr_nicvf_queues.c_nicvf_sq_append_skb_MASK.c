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
typedef  int /*<<< orphan*/  u64 ;
struct snd_queue {int /*<<< orphan*/  free_cnt; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct nicvf {int /*<<< orphan*/  netdev; struct nicvf* pnicvf; scalar_t__ t88; TYPE_1__* pdev; int /*<<< orphan*/  hw_tso; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_4__ {int nr_frags; scalar_t__ gso_size; int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_SKIP_CPU_SYNC ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct snd_queue*,int) ; 
 int FUNC5 (struct snd_queue*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_queue*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_queue*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nicvf*,struct snd_queue*,int,int,struct sk_buff*,int) ; 
 int FUNC10 (struct nicvf*,struct snd_queue*,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct nicvf*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct nicvf*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct nicvf*,struct snd_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/  const*) ; 
 int FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 TYPE_2__* FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

int FUNC22(struct nicvf *nic, struct snd_queue *sq,
			struct sk_buff *skb, u8 sq_num)
{
	int i, size;
	int subdesc_cnt, hdr_sqe = 0;
	int qentry;
	u64 dma_addr;

	subdesc_cnt = FUNC12(nic, skb);
	if (subdesc_cnt > FUNC0(&sq->free_cnt))
		goto append_fail;

	qentry = FUNC5(sq, subdesc_cnt);

	/* Check if its a TSO packet */
	if (FUNC20(skb)->gso_size && !nic->hw_tso)
		return FUNC10(nic, sq, sq_num, qentry, skb);

	/* Add SQ header subdesc */
	FUNC9(nic, sq, qentry, subdesc_cnt - 1,
				 skb, skb->len);
	hdr_sqe = qentry;

	/* Add SQ gather subdescs */
	qentry = FUNC4(sq, qentry);
	size = FUNC19(skb) ? FUNC18(skb) : skb->len;
	/* HW will ensure data coherency, CPU sync not required */
	dma_addr = FUNC1(&nic->pdev->dev, FUNC21(skb->data),
				      FUNC14(skb->data), size,
				      DMA_TO_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
	if (FUNC2(&nic->pdev->dev, dma_addr)) {
		FUNC6(sq, qentry, subdesc_cnt);
		return 0;
	}

	FUNC8(sq, qentry, size, dma_addr);

	/* Check for scattered buffer */
	if (!FUNC19(skb))
		goto doorbell;

	for (i = 0; i < FUNC20(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC20(skb)->frags[i];

		qentry = FUNC4(sq, qentry);
		size = FUNC17(frag);
		dma_addr = FUNC1(&nic->pdev->dev,
					      FUNC16(frag),
					      FUNC15(frag), size,
					      DMA_TO_DEVICE,
					      DMA_ATTR_SKIP_CPU_SYNC);
		if (FUNC2(&nic->pdev->dev, dma_addr)) {
			/* Free entire chain of mapped buffers
			 * here 'i' = frags mapped + above mapped skb->data
			 */
			FUNC13(nic, sq, hdr_sqe, i);
			FUNC6(sq, qentry, subdesc_cnt);
			return 0;
		}
		FUNC8(sq, qentry, size, dma_addr);
	}

doorbell:
	if (nic->t88 && FUNC20(skb)->gso_size) {
		qentry = FUNC4(sq, qentry);
		FUNC7(sq, qentry, hdr_sqe, skb);
	}

	FUNC11(nic, skb, sq_num, subdesc_cnt);

	return 1;

append_fail:
	/* Use original PCI dev for debug log */
	nic = nic->pnicvf;
	FUNC3(nic->netdev, "Not enough SQ descriptors to xmit pkt\n");
	return 0;
}