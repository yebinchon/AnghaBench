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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct brcmf_sdio_hdrinfo {int len; int dat_offset; scalar_t__ seq_num; int len_nxtfrm; scalar_t__ channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  fc_rcvd; int /*<<< orphan*/  fc_xon; int /*<<< orphan*/  fc_xoff; int /*<<< orphan*/  rx_badseq; int /*<<< orphan*/  rx_badhdr; int /*<<< orphan*/  rx_toolong; } ;
struct brcmf_sdio {int rxpending; scalar_t__ flowcontrol; scalar_t__ tx_seq; scalar_t__ tx_max; TYPE_1__ sdcnt; int /*<<< orphan*/  blocksize; } ;
typedef  enum brcmf_sdio_frmtype { ____Placeholder_brcmf_sdio_frmtype } brcmf_sdio_frmtype ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int BRCMF_SDIO_FT_SUB ; 
 int BRCMF_SDIO_FT_SUPER ; 
 int EINVAL ; 
 int EIO ; 
 int ENODATA ; 
 int ENXIO ; 
 int EPROTO ; 
 int MAX_RX_DATASZ ; 
 int /*<<< orphan*/  SDIO ; 
 scalar_t__ SDPCM_CHANNEL_MASK ; 
 scalar_t__ SDPCM_CHANNEL_SHIFT ; 
 scalar_t__ SDPCM_CONTROL_CHANNEL ; 
 scalar_t__ SDPCM_DATA_CHANNEL ; 
 scalar_t__ SDPCM_EVENT_CHANNEL ; 
 scalar_t__ SDPCM_FCMASK_MASK ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ SDPCM_GLOM_CHANNEL ; 
 int SDPCM_HDRLEN ; 
 int /*<<< orphan*/  SDPCM_HWHDR_LEN ; 
 scalar_t__ SDPCM_NEXTLEN_MASK ; 
 scalar_t__ SDPCM_NEXTLEN_SHIFT ; 
 int /*<<< orphan*/  SDPCM_RX ; 
 scalar_t__ SDPCM_SEQ_MASK ; 
 scalar_t__ SDPCM_WINDOW_MASK ; 
 scalar_t__ SDPCM_WINDOW_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio*,int,int) ; 
 int FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(struct brcmf_sdio *bus, u8 *header,
			      struct brcmf_sdio_hdrinfo *rd,
			      enum brcmf_sdio_frmtype type)
{
	u16 len, checksum;
	u8 rx_seq, fc, tx_seq_max;
	u32 swheader;

	FUNC8(SDPCM_RX, header);

	/* hw header */
	len = FUNC5(header);
	checksum = FUNC5(header + sizeof(u16));
	/* All zero means no more to read */
	if (!(len | checksum)) {
		bus->rxpending = false;
		return -ENODATA;
	}
	if ((u16)(~(len ^ checksum))) {
		FUNC2("HW header checksum error\n");
		bus->sdcnt.rx_badhdr++;
		FUNC4(bus, false, false);
		return -EIO;
	}
	if (len < SDPCM_HDRLEN) {
		FUNC2("HW header length error\n");
		return -EPROTO;
	}
	if (type == BRCMF_SDIO_FT_SUPER &&
	    (FUNC7(len, bus->blocksize) != rd->len)) {
		FUNC2("HW superframe header length error\n");
		return -EPROTO;
	}
	if (type == BRCMF_SDIO_FT_SUB && len > rd->len) {
		FUNC2("HW subframe header length error\n");
		return -EPROTO;
	}
	rd->len = len;

	/* software header */
	header += SDPCM_HWHDR_LEN;
	swheader = FUNC6(*(__le32 *)header);
	if (type == BRCMF_SDIO_FT_SUPER && FUNC0(header)) {
		FUNC2("Glom descriptor found in superframe head\n");
		rd->len = 0;
		return -EINVAL;
	}
	rx_seq = (u8)(swheader & SDPCM_SEQ_MASK);
	rd->channel = (swheader & SDPCM_CHANNEL_MASK) >> SDPCM_CHANNEL_SHIFT;
	if (len > MAX_RX_DATASZ && rd->channel != SDPCM_CONTROL_CHANNEL &&
	    type != BRCMF_SDIO_FT_SUPER) {
		FUNC2("HW header length too long\n");
		bus->sdcnt.rx_toolong++;
		FUNC4(bus, false, false);
		rd->len = 0;
		return -EPROTO;
	}
	if (type == BRCMF_SDIO_FT_SUPER && rd->channel != SDPCM_GLOM_CHANNEL) {
		FUNC2("Wrong channel for superframe\n");
		rd->len = 0;
		return -EINVAL;
	}
	if (type == BRCMF_SDIO_FT_SUB && rd->channel != SDPCM_DATA_CHANNEL &&
	    rd->channel != SDPCM_EVENT_CHANNEL) {
		FUNC2("Wrong channel for subframe\n");
		rd->len = 0;
		return -EINVAL;
	}
	rd->dat_offset = FUNC3(header);
	if (rd->dat_offset < SDPCM_HDRLEN || rd->dat_offset > rd->len) {
		FUNC2("seq %d: bad data offset\n", rx_seq);
		bus->sdcnt.rx_badhdr++;
		FUNC4(bus, false, false);
		rd->len = 0;
		return -ENXIO;
	}
	if (rd->seq_num != rx_seq) {
		FUNC1(SDIO, "seq %d, expected %d\n", rx_seq, rd->seq_num);
		bus->sdcnt.rx_badseq++;
		rd->seq_num = rx_seq;
	}
	/* no need to check the reset for subframe */
	if (type == BRCMF_SDIO_FT_SUB)
		return 0;
	rd->len_nxtfrm = (swheader & SDPCM_NEXTLEN_MASK) >> SDPCM_NEXTLEN_SHIFT;
	if (rd->len_nxtfrm << 4 > MAX_RX_DATASZ) {
		/* only warm for NON glom packet */
		if (rd->channel != SDPCM_GLOM_CHANNEL)
			FUNC2("seq %d: next length error\n", rx_seq);
		rd->len_nxtfrm = 0;
	}
	swheader = FUNC6(*(__le32 *)(header + 4));
	fc = swheader & SDPCM_FCMASK_MASK;
	if (bus->flowcontrol != fc) {
		if (~bus->flowcontrol & fc)
			bus->sdcnt.fc_xoff++;
		if (bus->flowcontrol & ~fc)
			bus->sdcnt.fc_xon++;
		bus->sdcnt.fc_rcvd++;
		bus->flowcontrol = fc;
	}
	tx_seq_max = (swheader & SDPCM_WINDOW_MASK) >> SDPCM_WINDOW_SHIFT;
	if ((u8)(tx_seq_max - bus->tx_seq) > 0x40) {
		FUNC2("seq %d: max tx seq number error\n", rx_seq);
		tx_seq_max = bus->tx_seq + 2;
	}
	bus->tx_max = tx_seq_max;

	return 0;
}