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
typedef  scalar_t__ u32 ;
struct sk_buff {size_t len; int /*<<< orphan*/  dev; } ;
struct scatterlist {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  OutPktsTooLong; } ;
struct pcpu_secy_stats {int /*<<< orphan*/  syncp; TYPE_2__ stats; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sc {size_t encoding_sa; scalar_t__ encrypt; int /*<<< orphan*/ * sa; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfm; } ;
struct macsec_tx_sa {TYPE_3__ key; } ;
struct macsec_secy {int operational; int icv_len; int /*<<< orphan*/  sci; struct macsec_tx_sc tx_sc; } ;
struct macsec_eth_header {int dummy; } ;
struct macsec_dev {int /*<<< orphan*/  stats; TYPE_1__* real_dev; struct macsec_secy secy; } ;
struct ethhdr {int dummy; } ;
struct aead_request {int dummy; } ;
struct TYPE_8__ {struct macsec_tx_sa* tx_sa; struct aead_request* req; } ;
struct TYPE_5__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOLINK ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MACSEC_NEEDED_HEADROOM ; 
 scalar_t__ MACSEC_NEEDED_TAILROOM ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,struct scatterlist*,struct scatterlist*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 struct aead_request* FUNC12 (int /*<<< orphan*/ ,unsigned char**,struct scatterlist**,int) ; 
 int /*<<< orphan*/  macsec_encrypt_done ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct macsec_eth_header*,struct macsec_secy*,scalar_t__,int) ; 
 int FUNC16 (int) ; 
 struct macsec_dev* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct macsec_eth_header*,size_t) ; 
 TYPE_4__* FUNC19 (struct sk_buff*) ; 
 struct macsec_tx_sa* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct macsec_tx_sa*) ; 
 int /*<<< orphan*/  FUNC22 (struct macsec_eth_header*,struct ethhdr*,int) ; 
 int FUNC23 (struct macsec_secy*) ; 
 int /*<<< orphan*/  FUNC24 (struct scatterlist*,int) ; 
 struct sk_buff* FUNC25 (struct sk_buff*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 scalar_t__ FUNC27 (struct sk_buff*) ; 
 struct macsec_eth_header* FUNC28 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*,int) ; 
 scalar_t__ FUNC30 (struct sk_buff*) ; 
 int FUNC31 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,size_t) ; 
 struct sk_buff* FUNC32 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct pcpu_secy_stats* FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (struct macsec_tx_sa*,struct macsec_secy*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC38(struct sk_buff *skb,
				      struct net_device *dev)
{
	int ret;
	struct scatterlist *sg;
	struct sk_buff *trailer;
	unsigned char *iv;
	struct ethhdr *eth;
	struct macsec_eth_header *hh;
	size_t unprotected_len;
	struct aead_request *req;
	struct macsec_secy *secy;
	struct macsec_tx_sc *tx_sc;
	struct macsec_tx_sa *tx_sa;
	struct macsec_dev *macsec = FUNC17(dev);
	bool sci_present;
	u32 pn;

	secy = &macsec->secy;
	tx_sc = &secy->tx_sc;

	/* 10.5.1 TX SA assignment */
	tx_sa = FUNC20(tx_sc->sa[tx_sc->encoding_sa]);
	if (!tx_sa) {
		secy->operational = false;
		FUNC10(skb);
		return FUNC0(-EINVAL);
	}

	if (FUNC37(FUNC27(skb) < MACSEC_NEEDED_HEADROOM ||
		     FUNC30(skb) < MACSEC_NEEDED_TAILROOM)) {
		struct sk_buff *nskb = FUNC25(skb,
						       MACSEC_NEEDED_HEADROOM,
						       MACSEC_NEEDED_TAILROOM,
						       GFP_ATOMIC);
		if (FUNC11(nskb)) {
			FUNC5(skb);
			skb = nskb;
		} else {
			FUNC21(tx_sa);
			FUNC10(skb);
			return FUNC0(-ENOMEM);
		}
	} else {
		skb = FUNC32(skb, GFP_ATOMIC);
		if (!skb) {
			FUNC21(tx_sa);
			return FUNC0(-ENOMEM);
		}
	}

	unprotected_len = skb->len;
	eth = FUNC9(skb);
	sci_present = FUNC23(secy);
	hh = FUNC28(skb, FUNC13(sci_present));
	FUNC22(hh, eth, 2 * ETH_ALEN);

	pn = FUNC34(tx_sa, secy);
	if (pn == 0) {
		FUNC21(tx_sa);
		FUNC10(skb);
		return FUNC0(-ENOLINK);
	}
	FUNC15(hh, secy, pn, sci_present);
	FUNC18(hh, unprotected_len - 2 * ETH_ALEN);

	FUNC29(skb, secy->icv_len);

	if (skb->len - ETH_HLEN > FUNC17(dev)->real_dev->mtu) {
		struct pcpu_secy_stats *secy_stats = FUNC33(macsec->stats);

		FUNC35(&secy_stats->syncp);
		secy_stats->stats.OutPktsTooLong++;
		FUNC36(&secy_stats->syncp);

		FUNC21(tx_sa);
		FUNC10(skb);
		return FUNC0(-EINVAL);
	}

	ret = FUNC26(skb, 0, &trailer);
	if (FUNC37(ret < 0)) {
		FUNC21(tx_sa);
		FUNC10(skb);
		return FUNC0(ret);
	}

	req = FUNC12(tx_sa->key.tfm, &iv, &sg, ret);
	if (!req) {
		FUNC21(tx_sa);
		FUNC10(skb);
		return FUNC0(-ENOMEM);
	}

	FUNC14(iv, secy->sci, pn);

	FUNC24(sg, ret);
	ret = FUNC31(skb, sg, 0, skb->len);
	if (FUNC37(ret < 0)) {
		FUNC1(req);
		FUNC21(tx_sa);
		FUNC10(skb);
		return FUNC0(ret);
	}

	if (tx_sc->encrypt) {
		int len = skb->len - FUNC16(sci_present) -
			  secy->icv_len;
		FUNC4(req, sg, sg, len, iv);
		FUNC2(req, FUNC16(sci_present));
	} else {
		FUNC4(req, sg, sg, 0, iv);
		FUNC2(req, skb->len - secy->icv_len);
	}

	FUNC19(skb)->req = req;
	FUNC19(skb)->tx_sa = tx_sa;
	FUNC3(req, 0, macsec_encrypt_done, skb);

	FUNC7(skb->dev);
	ret = FUNC6(req);
	if (ret == -EINPROGRESS) {
		return FUNC0(ret);
	} else if (ret != 0) {
		FUNC8(skb->dev);
		FUNC10(skb);
		FUNC1(req);
		FUNC21(tx_sa);
		return FUNC0(-EINVAL);
	}

	FUNC8(skb->dev);
	FUNC1(req);
	FUNC21(tx_sa);

	return skb;
}