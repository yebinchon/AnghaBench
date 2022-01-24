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
struct cas {int cas_flags; scalar_t__ regs; int /*<<< orphan*/ * stat_lock; int /*<<< orphan*/  mac_rx_cfg; scalar_t__ crc_size; TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int CAS_FLAG_SATURN ; 
 int CAS_FLAG_TARGET_ABORT ; 
 int CAS_MAX_MTU ; 
 int CAWR_RR_DIS ; 
 int ETH_HLEN ; 
 int ETH_ZLEN ; 
 int INF_BURST_EN ; 
 int /*<<< orphan*/  MAC_FRAMESIZE_MAX_BURST ; 
 int /*<<< orphan*/  MAC_FRAMESIZE_MAX_FRAME ; 
 int MAC_RX_FRAME_RECV ; 
 int MAC_TX_FRAME_XMIT ; 
 size_t N_TX_RINGS ; 
 scalar_t__ REG_CAWR ; 
 scalar_t__ REG_INF_BURST ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ REG_MAC_ADDR_FILTER0 ; 
 scalar_t__ REG_MAC_ADDR_FILTER0_MASK ; 
 scalar_t__ REG_MAC_ADDR_FILTER1 ; 
 scalar_t__ REG_MAC_ADDR_FILTER2 ; 
 scalar_t__ REG_MAC_ADDR_FILTER2_1_MASK ; 
 scalar_t__ REG_MAC_ATTEMPT_LIMIT ; 
 scalar_t__ REG_MAC_CTRL_MASK ; 
 scalar_t__ REG_MAC_CTRL_TYPE ; 
 scalar_t__ REG_MAC_FRAMESIZE_MAX ; 
 scalar_t__ REG_MAC_FRAMESIZE_MIN ; 
 scalar_t__ REG_MAC_IPG0 ; 
 scalar_t__ REG_MAC_IPG1 ; 
 scalar_t__ REG_MAC_IPG2 ; 
 scalar_t__ REG_MAC_JAM_SIZE ; 
 scalar_t__ REG_MAC_PA_SIZE ; 
 scalar_t__ REG_MAC_RANDOM_SEED ; 
 scalar_t__ REG_MAC_RX_MASK ; 
 scalar_t__ REG_MAC_SEND_PAUSE ; 
 scalar_t__ REG_MAC_SLOT_TIME ; 
 scalar_t__ REG_MAC_TX_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct cas*) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct cas *cp)
{
	unsigned char *e = &cp->dev->dev_addr[0];
	int i;
	FUNC3(cp);

	/* setup core arbitration weight register */
	FUNC7(CAWR_RR_DIS, cp->regs + REG_CAWR);

#if !defined(CONFIG_SPARC64) && !defined(CONFIG_ALPHA)
	/* set the infinite burst register for chips that don't have
	 * pci issues.
	 */
	if ((cp->cas_flags & CAS_FLAG_TARGET_ABORT) == 0)
		FUNC7(INF_BURST_EN, cp->regs + REG_INF_BURST);
#endif

	FUNC7(0x1BF0, cp->regs + REG_MAC_SEND_PAUSE);

	FUNC7(0x00, cp->regs + REG_MAC_IPG0);
	FUNC7(0x08, cp->regs + REG_MAC_IPG1);
	FUNC7(0x04, cp->regs + REG_MAC_IPG2);

	/* change later for 802.3z */
	FUNC7(0x40, cp->regs + REG_MAC_SLOT_TIME);

	/* min frame + FCS */
	FUNC7(ETH_ZLEN + 4, cp->regs + REG_MAC_FRAMESIZE_MIN);

	/* Ethernet payload + header + FCS + optional VLAN tag. NOTE: we
	 * specify the maximum frame size to prevent RX tag errors on
	 * oversized frames.
	 */
	FUNC7(FUNC0(MAC_FRAMESIZE_MAX_BURST, 0x2000) |
	       FUNC0(MAC_FRAMESIZE_MAX_FRAME,
			(CAS_MAX_MTU + ETH_HLEN + 4 + 4)),
	       cp->regs + REG_MAC_FRAMESIZE_MAX);

	/* NOTE: crc_size is used as a surrogate for half-duplex.
	 * workaround saturn half-duplex issue by increasing preamble
	 * size to 65 bytes.
	 */
	if ((cp->cas_flags & CAS_FLAG_SATURN) && cp->crc_size)
		FUNC7(0x41, cp->regs + REG_MAC_PA_SIZE);
	else
		FUNC7(0x07, cp->regs + REG_MAC_PA_SIZE);
	FUNC7(0x04, cp->regs + REG_MAC_JAM_SIZE);
	FUNC7(0x10, cp->regs + REG_MAC_ATTEMPT_LIMIT);
	FUNC7(0x8808, cp->regs + REG_MAC_CTRL_TYPE);

	FUNC7((e[5] | (e[4] << 8)) & 0x3ff, cp->regs + REG_MAC_RANDOM_SEED);

	FUNC7(0, cp->regs + REG_MAC_ADDR_FILTER0);
	FUNC7(0, cp->regs + REG_MAC_ADDR_FILTER1);
	FUNC7(0, cp->regs + REG_MAC_ADDR_FILTER2);
	FUNC7(0, cp->regs + REG_MAC_ADDR_FILTER2_1_MASK);
	FUNC7(0, cp->regs + REG_MAC_ADDR_FILTER0_MASK);

	/* setup mac address in perfect filter array */
	for (i = 0; i < 45; i++)
		FUNC7(0x0, cp->regs + FUNC1(i));

	FUNC7((e[4] << 8) | e[5], cp->regs + FUNC1(0));
	FUNC7((e[2] << 8) | e[3], cp->regs + FUNC1(1));
	FUNC7((e[0] << 8) | e[1], cp->regs + FUNC1(2));

	FUNC7(0x0001, cp->regs + FUNC1(42));
	FUNC7(0xc200, cp->regs + FUNC1(43));
	FUNC7(0x0180, cp->regs + FUNC1(44));

	cp->mac_rx_cfg = FUNC4(cp);

	FUNC5(&cp->stat_lock[N_TX_RINGS]);
	FUNC2(cp);
	FUNC6(&cp->stat_lock[N_TX_RINGS]);

	/* Setup MAC interrupts.  We want to get all of the interesting
	 * counter expiration events, but we do not want to hear about
	 * normal rx/tx as the DMA engine tells us that.
	 */
	FUNC7(MAC_TX_FRAME_XMIT, cp->regs + REG_MAC_TX_MASK);
	FUNC7(MAC_RX_FRAME_RECV, cp->regs + REG_MAC_RX_MASK);

	/* Don't enable even the PAUSE interrupts for now, we
	 * make no use of those events other than to record them.
	 */
	FUNC7(0xffffffff, cp->regs + REG_MAC_CTRL_MASK);
}