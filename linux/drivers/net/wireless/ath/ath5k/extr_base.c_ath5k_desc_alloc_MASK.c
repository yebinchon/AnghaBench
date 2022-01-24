#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath5k_hw {int desc_len; int desc_daddr; int txbuf_len; struct ath5k_desc* desc; int /*<<< orphan*/  dev; int /*<<< orphan*/  bcbuf; int /*<<< orphan*/  txbuf; int /*<<< orphan*/  rxbuf; struct ath5k_buf* bufptr; } ;
struct ath5k_desc {int dummy; } ;
struct ath5k_buf {int daddr; int /*<<< orphan*/  list; struct ath5k_desc* desc; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,struct ath5k_desc*,int,unsigned long long) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,char*) ; 
 int ATH_BCBUF ; 
 int ATH_RXBUF ; 
 int ATH_TXBUF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ath5k_desc* FUNC3 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct ath5k_desc*,int) ; 
 struct ath5k_buf* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct ath5k_hw *ah)
{
	struct ath5k_desc *ds;
	struct ath5k_buf *bf;
	dma_addr_t da;
	unsigned int i;
	int ret;

	/* allocate descriptors */
	ah->desc_len = sizeof(struct ath5k_desc) *
			(ATH_TXBUF + ATH_RXBUF + ATH_BCBUF + 1);

	ah->desc = FUNC3(ah->dev, ah->desc_len,
				&ah->desc_daddr, GFP_KERNEL);
	if (ah->desc == NULL) {
		FUNC1(ah, "can't allocate descriptors\n");
		ret = -ENOMEM;
		goto err;
	}
	ds = ah->desc;
	da = ah->desc_daddr;
	FUNC0(ah, ATH5K_DEBUG_ANY, "DMA map: %p (%zu) -> %llx\n",
		ds, ah->desc_len, (unsigned long long)ah->desc_daddr);

	bf = FUNC5(1 + ATH_TXBUF + ATH_RXBUF + ATH_BCBUF,
			sizeof(struct ath5k_buf), GFP_KERNEL);
	if (bf == NULL) {
		FUNC1(ah, "can't allocate bufptr\n");
		ret = -ENOMEM;
		goto err_free;
	}
	ah->bufptr = bf;

	FUNC2(&ah->rxbuf);
	for (i = 0; i < ATH_RXBUF; i++, bf++, ds++, da += sizeof(*ds)) {
		bf->desc = ds;
		bf->daddr = da;
		FUNC6(&bf->list, &ah->rxbuf);
	}

	FUNC2(&ah->txbuf);
	ah->txbuf_len = ATH_TXBUF;
	for (i = 0; i < ATH_TXBUF; i++, bf++, ds++, da += sizeof(*ds)) {
		bf->desc = ds;
		bf->daddr = da;
		FUNC6(&bf->list, &ah->txbuf);
	}

	/* beacon buffers */
	FUNC2(&ah->bcbuf);
	for (i = 0; i < ATH_BCBUF; i++, bf++, ds++, da += sizeof(*ds)) {
		bf->desc = ds;
		bf->daddr = da;
		FUNC6(&bf->list, &ah->bcbuf);
	}

	return 0;
err_free:
	FUNC4(ah->dev, ah->desc_len, ah->desc, ah->desc_daddr);
err:
	ah->desc = NULL;
	return ret;
}