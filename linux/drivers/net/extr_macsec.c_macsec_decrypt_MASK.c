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
typedef  int u16 ;
struct sk_buff {int len; struct net_device* dev; scalar_t__ data; } ;
struct scatterlist {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int icv_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  tfm; } ;
struct macsec_rx_sa {TYPE_1__ key; } ;
struct macsec_eth_header {int tci_an; int /*<<< orphan*/  packet_number; } ;
struct aead_request {int dummy; } ;
typedef  int /*<<< orphan*/  sci_t ;
struct TYPE_4__ {int valid; struct aead_request* req; int /*<<< orphan*/  has_sci; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MACSEC_TCI_E ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,struct scatterlist*,struct scatterlist*,int,unsigned char*) ; 
 int FUNC5 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct aead_request* FUNC9 (int /*<<< orphan*/ ,unsigned char**,struct scatterlist**,int) ; 
 int /*<<< orphan*/  macsec_decrypt_done ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int) ; 
 int FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 struct sk_buff* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC20(struct sk_buff *skb,
				      struct net_device *dev,
				      struct macsec_rx_sa *rx_sa,
				      sci_t sci,
				      struct macsec_secy *secy)
{
	int ret;
	struct scatterlist *sg;
	struct sk_buff *trailer;
	unsigned char *iv;
	struct aead_request *req;
	struct macsec_eth_header *hdr;
	u16 icv_len = secy->icv_len;

	FUNC12(skb)->valid = false;
	skb = FUNC16(skb, GFP_ATOMIC);
	if (!skb)
		return FUNC0(-ENOMEM);

	ret = FUNC15(skb, 0, &trailer);
	if (FUNC19(ret < 0)) {
		FUNC8(skb);
		return FUNC0(ret);
	}
	req = FUNC9(rx_sa->key.tfm, &iv, &sg, ret);
	if (!req) {
		FUNC8(skb);
		return FUNC0(-ENOMEM);
	}

	hdr = (struct macsec_eth_header *)skb->data;
	FUNC10(iv, sci, FUNC13(hdr->packet_number));

	FUNC14(sg, ret);
	ret = FUNC17(skb, sg, 0, skb->len);
	if (FUNC19(ret < 0)) {
		FUNC1(req);
		FUNC8(skb);
		return FUNC0(ret);
	}

	if (hdr->tci_an & MACSEC_TCI_E) {
		/* confidentiality: ethernet + macsec header
		 * authenticated, encrypted payload
		 */
		int len = skb->len - FUNC11(FUNC12(skb)->has_sci);

		FUNC4(req, sg, sg, len, iv);
		FUNC2(req, FUNC11(FUNC12(skb)->has_sci));
		skb = FUNC18(skb, GFP_ATOMIC);
		if (!skb) {
			FUNC1(req);
			return FUNC0(-ENOMEM);
		}
	} else {
		/* integrity only: all headers + data authenticated */
		FUNC4(req, sg, sg, icv_len, iv);
		FUNC2(req, skb->len - icv_len);
	}

	FUNC12(skb)->req = req;
	skb->dev = dev;
	FUNC3(req, 0, macsec_decrypt_done, skb);

	FUNC6(dev);
	ret = FUNC5(req);
	if (ret == -EINPROGRESS) {
		return FUNC0(ret);
	} else if (ret != 0) {
		/* decryption/authentication failed
		 * 10.6 if validateFrames is disabled, deliver anyway
		 */
		if (ret != -EBADMSG) {
			FUNC8(skb);
			skb = FUNC0(ret);
		}
	} else {
		FUNC12(skb)->valid = true;
	}
	FUNC7(dev);

	FUNC1(req);

	return skb;
}