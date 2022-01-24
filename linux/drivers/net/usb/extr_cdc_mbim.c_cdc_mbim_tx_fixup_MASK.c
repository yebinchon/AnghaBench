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
typedef  int u8 ;
typedef  int u16 ;
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  data; } ;
struct sk_buff {scalar_t__ len; } ;
struct cdc_ncm_ctx {int /*<<< orphan*/  mtx; } ;
struct cdc_mbim_state {int flags; struct cdc_ncm_ctx* ctx; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  h_proto; } ;
struct TYPE_3__ {int /*<<< orphan*/  h_vlan_encapsulated_proto; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int FLAG_IPS0_VLAN ; 
 int MBIM_IPS0_VID ; 
 int /*<<< orphan*/  USB_CDC_MBIM_NDP16_DSS_SIGN ; 
 int /*<<< orphan*/  USB_CDC_MBIM_NDP16_IPS_SIGN ; 
 scalar_t__ VLAN_ETH_HLEN ; 
 scalar_t__ FUNC0 (struct sk_buff*,int*) ; 
 struct sk_buff* FUNC1 (struct usbnet*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_err ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int*) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
	struct sk_buff *skb_out;
	struct cdc_mbim_state *info = (void *)&dev->data;
	struct cdc_ncm_ctx *ctx = info->ctx;
	__le32 sign = FUNC2(USB_CDC_MBIM_NDP16_IPS_SIGN);
	u16 tci = 0;
	bool is_ip;
	u8 *c;

	if (!ctx)
		goto error;

	if (skb) {
		if (skb->len <= ETH_HLEN)
			goto error;

		/* Some applications using e.g. packet sockets will
		 * bypass the VLAN acceleration and create tagged
		 * ethernet frames directly.  We primarily look for
		 * the accelerated out-of-band tag, but fall back if
		 * required
		 */
		FUNC8(skb);
		if (FUNC12(skb, &tci) < 0 && skb->len > VLAN_ETH_HLEN &&
		    FUNC0(skb, &tci) == 0) {
			is_ip = FUNC5(FUNC11(skb)->h_vlan_encapsulated_proto);
			FUNC7(skb, VLAN_ETH_HLEN);
		} else {
			is_ip = FUNC5(FUNC4(skb)->h_proto);
			FUNC7(skb, ETH_HLEN);
		}

		/* Is IP session <0> tagged too? */
		if (info->flags & FLAG_IPS0_VLAN) {
			/* drop all untagged packets */
			if (!tci)
				goto error;
			/* map MBIM_IPS0_VID to IPS<0> */
			if (tci == MBIM_IPS0_VID)
				tci = 0;
		}

		/* mapping VLANs to MBIM sessions:
		 *   no tag     => IPS session <0> if !FLAG_IPS0_VLAN
		 *   1 - 255    => IPS session <vlanid>
		 *   256 - 511  => DSS session <vlanid - 256>
		 *   512 - 4093 => unsupported, drop
		 *   4094       => IPS session <0> if FLAG_IPS0_VLAN
		 */

		switch (tci & 0x0f00) {
		case 0x0000: /* VLAN ID 0 - 255 */
			if (!is_ip)
				goto error;
			c = (u8 *)&sign;
			c[3] = tci;
			break;
		case 0x0100: /* VLAN ID 256 - 511 */
			if (is_ip)
				goto error;
			sign = FUNC2(USB_CDC_MBIM_NDP16_DSS_SIGN);
			c = (u8 *)&sign;
			c[3] = tci;
			break;
		default:
			FUNC6(dev, tx_err, dev->net,
				  "unsupported tci=0x%04x\n", tci);
			goto error;
		}
	}

	FUNC9(&ctx->mtx);
	skb_out = FUNC1(dev, skb, sign);
	FUNC10(&ctx->mtx);
	return skb_out;

error:
	if (skb)
		FUNC3(skb);

	return NULL;
}