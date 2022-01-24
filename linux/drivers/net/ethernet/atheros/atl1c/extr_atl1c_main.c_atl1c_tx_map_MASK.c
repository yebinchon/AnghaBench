#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct atl1c_tpd_desc {int word1; void* buffer_len; void* buffer_addr; } ;
struct atl1c_buffer {scalar_t__ length; void* dma; struct sk_buff* skb; } ;
struct atl1c_adapter {TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATL1C_BUFFER_BUSY ; 
 int /*<<< orphan*/  ATL1C_PCIMAP_PAGE ; 
 int /*<<< orphan*/  ATL1C_PCIMAP_SINGLE ; 
 int /*<<< orphan*/  ATL1C_PCIMAP_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TPD_EOP_SHIFT ; 
 int TPD_LSO_EN_MASK ; 
 int TPD_LSO_EN_SHIFT ; 
 struct atl1c_tpd_desc* FUNC2 (struct atl1c_adapter*,int) ; 
 struct atl1c_buffer* FUNC3 (struct atl1c_adapter*,struct atl1c_tpd_desc*) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct atl1c_tpd_desc*,struct atl1c_tpd_desc*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*) ; 
 void* FUNC9 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct atl1c_adapter *adapter,
		      struct sk_buff *skb, struct atl1c_tpd_desc *tpd,
			enum atl1c_trans_queue type)
{
	struct atl1c_tpd_desc *use_tpd = NULL;
	struct atl1c_buffer *buffer_info = NULL;
	u16 buf_len = FUNC12(skb);
	u16 map_len = 0;
	u16 mapped_len = 0;
	u16 hdr_len = 0;
	u16 nr_frags;
	u16 f;
	int tso;

	nr_frags = FUNC13(skb)->nr_frags;
	tso = (tpd->word1 >> TPD_LSO_EN_SHIFT) & TPD_LSO_EN_MASK;
	if (tso) {
		/* TSO */
		map_len = hdr_len = FUNC14(skb) + FUNC15(skb);
		use_tpd = tpd;

		buffer_info = FUNC3(adapter, use_tpd);
		buffer_info->length = map_len;
		buffer_info->dma = FUNC9(adapter->pdev,
					skb->data, hdr_len, PCI_DMA_TODEVICE);
		if (FUNC16(FUNC8(adapter->pdev,
						   buffer_info->dma)))
			goto err_dma;
		FUNC0(buffer_info, ATL1C_BUFFER_BUSY);
		FUNC1(buffer_info, ATL1C_PCIMAP_SINGLE,
			ATL1C_PCIMAP_TODEVICE);
		mapped_len += map_len;
		use_tpd->buffer_addr = FUNC5(buffer_info->dma);
		use_tpd->buffer_len = FUNC4(buffer_info->length);
	}

	if (mapped_len < buf_len) {
		/* mapped_len == 0, means we should use the first tpd,
		   which is given by caller  */
		if (mapped_len == 0)
			use_tpd = tpd;
		else {
			use_tpd = FUNC2(adapter, type);
			FUNC7(use_tpd, tpd, sizeof(struct atl1c_tpd_desc));
		}
		buffer_info = FUNC3(adapter, use_tpd);
		buffer_info->length = buf_len - mapped_len;
		buffer_info->dma =
			FUNC9(adapter->pdev, skb->data + mapped_len,
					buffer_info->length, PCI_DMA_TODEVICE);
		if (FUNC16(FUNC8(adapter->pdev,
						   buffer_info->dma)))
			goto err_dma;

		FUNC0(buffer_info, ATL1C_BUFFER_BUSY);
		FUNC1(buffer_info, ATL1C_PCIMAP_SINGLE,
			ATL1C_PCIMAP_TODEVICE);
		use_tpd->buffer_addr = FUNC5(buffer_info->dma);
		use_tpd->buffer_len  = FUNC4(buffer_info->length);
	}

	for (f = 0; f < nr_frags; f++) {
		skb_frag_t *frag = &FUNC13(skb)->frags[f];

		use_tpd = FUNC2(adapter, type);
		FUNC7(use_tpd, tpd, sizeof(struct atl1c_tpd_desc));

		buffer_info = FUNC3(adapter, use_tpd);
		buffer_info->length = FUNC11(frag);
		buffer_info->dma = FUNC10(&adapter->pdev->dev,
						    frag, 0,
						    buffer_info->length,
						    DMA_TO_DEVICE);
		if (FUNC6(&adapter->pdev->dev, buffer_info->dma))
			goto err_dma;

		FUNC0(buffer_info, ATL1C_BUFFER_BUSY);
		FUNC1(buffer_info, ATL1C_PCIMAP_PAGE,
			ATL1C_PCIMAP_TODEVICE);
		use_tpd->buffer_addr = FUNC5(buffer_info->dma);
		use_tpd->buffer_len  = FUNC4(buffer_info->length);
	}

	/* The last tpd */
	use_tpd->word1 |= 1 << TPD_EOP_SHIFT;
	/* The last buffer info contain the skb address,
	   so it will be free after unmap */
	buffer_info->skb = skb;

	return 0;

err_dma:
	buffer_info->dma = 0;
	buffer_info->length = 0;
	return -1;
}