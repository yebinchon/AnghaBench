#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  void* u16 ;
struct sk_buff {int mac_len; } ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct TYPE_9__ {int mode; int pan_id; int /*<<< orphan*/  extended_addr; } ;
struct TYPE_8__ {int type; int security_enabled; int intra_pan; int dest_addr_mode; int source_addr_mode; } ;
struct TYPE_7__ {int mode; int pan_id; int /*<<< orphan*/  extended_addr; } ;
struct TYPE_6__ {int level; void* key_id; int /*<<< orphan*/  extended_src; void* key_id_mode; } ;
struct ieee802154_hdr {TYPE_4__ source; TYPE_3__ fc; TYPE_2__ dest; TYPE_1__ sec; } ;
struct ca8210_priv {TYPE_5__* spi; scalar_t__ promiscuous; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int IEEE802154_MTU ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct sk_buff*,struct ieee802154_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee802154_hw*,struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,void**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(
	struct ieee802154_hw  *hw,
	size_t                 len,
	u8                    *data_ind
)
{
	struct ieee802154_hdr hdr;
	int msdulen;
	int hlen;
	u8 mpdulinkquality = data_ind[23];
	struct sk_buff *skb;
	struct ca8210_priv *priv = hw->priv;

	/* Allocate mtu size buffer for every rx packet */
	skb = FUNC0(IEEE802154_MTU + sizeof(hdr));
	if (!skb)
		return -ENOMEM;

	FUNC9(skb, sizeof(hdr));

	msdulen = data_ind[22]; /* msdu_length */
	if (msdulen > IEEE802154_MTU) {
		FUNC3(
			&priv->spi->dev,
			"received erroneously large msdu length!\n"
		);
		FUNC6(skb);
		return -EMSGSIZE;
	}
	FUNC2(&priv->spi->dev, "skb buffer length = %d\n", msdulen);

	if (priv->promiscuous)
		goto copy_payload;

	/* Populate hdr */
	hdr.sec.level = data_ind[29 + msdulen];
	FUNC2(&priv->spi->dev, "security level: %#03x\n", hdr.sec.level);
	if (hdr.sec.level > 0) {
		hdr.sec.key_id_mode = data_ind[30 + msdulen];
		FUNC7(&hdr.sec.extended_src, &data_ind[31 + msdulen], 8);
		hdr.sec.key_id = data_ind[39 + msdulen];
	}
	hdr.source.mode = data_ind[0];
	FUNC2(&priv->spi->dev, "srcAddrMode: %#03x\n", hdr.source.mode);
	hdr.source.pan_id = *(u16 *)&data_ind[1];
	FUNC2(&priv->spi->dev, "srcPanId: %#06x\n", hdr.source.pan_id);
	FUNC7(&hdr.source.extended_addr, &data_ind[3], 8);
	hdr.dest.mode = data_ind[11];
	FUNC2(&priv->spi->dev, "dstAddrMode: %#03x\n", hdr.dest.mode);
	hdr.dest.pan_id = *(u16 *)&data_ind[12];
	FUNC2(&priv->spi->dev, "dstPanId: %#06x\n", hdr.dest.pan_id);
	FUNC7(&hdr.dest.extended_addr, &data_ind[14], 8);

	/* Fill in FC implicitly */
	hdr.fc.type = 1; /* Data frame */
	if (hdr.sec.level)
		hdr.fc.security_enabled = 1;
	else
		hdr.fc.security_enabled = 0;
	if (data_ind[1] != data_ind[12] || data_ind[2] != data_ind[13])
		hdr.fc.intra_pan = 1;
	else
		hdr.fc.intra_pan = 0;
	hdr.fc.dest_addr_mode = hdr.dest.mode;
	hdr.fc.source_addr_mode = hdr.source.mode;

	/* Add hdr to front of buffer */
	hlen = FUNC4(skb, &hdr);

	if (hlen < 0) {
		FUNC1(&priv->spi->dev, "failed to push mac hdr onto skb!\n");
		FUNC6(skb);
		return hlen;
	}

	FUNC10(skb);
	skb->mac_len = hlen;

copy_payload:
	/* Add <msdulen> bytes of space to the back of the buffer */
	/* Copy msdu to skb */
	FUNC8(skb, &data_ind[29], msdulen);

	FUNC5(hw, skb, mpdulinkquality);
	return 0;
}