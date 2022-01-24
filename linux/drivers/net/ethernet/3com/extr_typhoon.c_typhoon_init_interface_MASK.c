#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct typhoon_shared {int dummy; } ;
struct typhoon_interface {void* txLoAddr; void* zeroAddr; void* respSize; void* respAddr; void* cmdSize; void* cmdAddr; void* rxHiSize; void* rxHiAddr; void* rxLoSize; void* rxLoAddr; void* rxBuffSize; void* rxBuffAddr; void* txHiSize; void* txHiAddr; void* txLoSize; void* ringIndex; } ;
struct TYPE_15__ {int /*<<< orphan*/  writeRegister; int /*<<< orphan*/ * ringBase; } ;
struct TYPE_14__ {int /*<<< orphan*/  writeRegister; int /*<<< orphan*/ * ringBase; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ringBase; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ringBase; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ringBase; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ringBase; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ringBase; } ;
struct typhoon {int shared_dma; int offload; int /*<<< orphan*/  command_lock; int /*<<< orphan*/  card_state; int /*<<< orphan*/  txlo_dma_addr; TYPE_7__ txHiRing; TYPE_6__ txLoRing; TYPE_8__* shared; TYPE_5__ respRing; TYPE_4__ cmdRing; TYPE_3__ rxBuffRing; TYPE_2__ rxHiRing; TYPE_1__ rxLoRing; int /*<<< orphan*/ * indexes; } ;
struct tx_desc {int dummy; } ;
struct rx_free {int dummy; } ;
struct rx_desc {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_16__ {scalar_t__ resp; scalar_t__ cmd; scalar_t__ rxBuff; scalar_t__ rxHi; scalar_t__ rxLo; scalar_t__ txHi; scalar_t__ txLo; int /*<<< orphan*/  indexes; struct typhoon_interface iface; } ;

/* Variables and functions */
 int COMMAND_RING_SIZE ; 
 int RESPONSE_RING_SIZE ; 
 int RXFREE_ENTRIES ; 
 int RX_ENTRIES ; 
 int /*<<< orphan*/  Sleeping ; 
 int TSO_OFFLOAD_ON ; 
 int TXHI_ENTRIES ; 
 int TXLO_ENTRIES ; 
 int TYPHOON_OFFLOAD_IP_CHKSUM ; 
 int TYPHOON_OFFLOAD_TCP_CHKSUM ; 
 int TYPHOON_OFFLOAD_UDP_CHKSUM ; 
 int TYPHOON_OFFLOAD_VLAN ; 
 int /*<<< orphan*/  TYPHOON_REG_TX_HI_READY ; 
 int /*<<< orphan*/  TYPHOON_REG_TX_LO_READY ; 
 int /*<<< orphan*/  cmd ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  indexes ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  resp ; 
 int /*<<< orphan*/  rxBuff ; 
 int /*<<< orphan*/  rxHi ; 
 int /*<<< orphan*/  rxLo ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txHi ; 
 int /*<<< orphan*/  txLo ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  zeroWord ; 

__attribute__((used)) static void
FUNC6(struct typhoon *tp)
{
	struct typhoon_interface *iface = &tp->shared->iface;
	dma_addr_t shared_dma;

	FUNC2(tp->shared, 0, sizeof(struct typhoon_shared));

	/* The *Hi members of iface are all init'd to zero by the memset().
	 */
	shared_dma = tp->shared_dma + FUNC3(indexes);
	iface->ringIndex = FUNC0(shared_dma);

	shared_dma = tp->shared_dma + FUNC3(txLo);
	iface->txLoAddr = FUNC0(shared_dma);
	iface->txLoSize = FUNC0(TXLO_ENTRIES * sizeof(struct tx_desc));

	shared_dma = tp->shared_dma + FUNC3(txHi);
	iface->txHiAddr = FUNC0(shared_dma);
	iface->txHiSize = FUNC0(TXHI_ENTRIES * sizeof(struct tx_desc));

	shared_dma = tp->shared_dma + FUNC3(rxBuff);
	iface->rxBuffAddr = FUNC0(shared_dma);
	iface->rxBuffSize = FUNC0(RXFREE_ENTRIES *
					sizeof(struct rx_free));

	shared_dma = tp->shared_dma + FUNC3(rxLo);
	iface->rxLoAddr = FUNC0(shared_dma);
	iface->rxLoSize = FUNC0(RX_ENTRIES * sizeof(struct rx_desc));

	shared_dma = tp->shared_dma + FUNC3(rxHi);
	iface->rxHiAddr = FUNC0(shared_dma);
	iface->rxHiSize = FUNC0(RX_ENTRIES * sizeof(struct rx_desc));

	shared_dma = tp->shared_dma + FUNC3(cmd);
	iface->cmdAddr = FUNC0(shared_dma);
	iface->cmdSize = FUNC0(COMMAND_RING_SIZE);

	shared_dma = tp->shared_dma + FUNC3(resp);
	iface->respAddr = FUNC0(shared_dma);
	iface->respSize = FUNC0(RESPONSE_RING_SIZE);

	shared_dma = tp->shared_dma + FUNC3(zeroWord);
	iface->zeroAddr = FUNC0(shared_dma);

	tp->indexes = &tp->shared->indexes;
	tp->txLoRing.ringBase = (u8 *) tp->shared->txLo;
	tp->txHiRing.ringBase = (u8 *) tp->shared->txHi;
	tp->rxLoRing.ringBase = (u8 *) tp->shared->rxLo;
	tp->rxHiRing.ringBase = (u8 *) tp->shared->rxHi;
	tp->rxBuffRing.ringBase = (u8 *) tp->shared->rxBuff;
	tp->cmdRing.ringBase = (u8 *) tp->shared->cmd;
	tp->respRing.ringBase = (u8 *) tp->shared->resp;

	tp->txLoRing.writeRegister = TYPHOON_REG_TX_LO_READY;
	tp->txHiRing.writeRegister = TYPHOON_REG_TX_HI_READY;

	tp->txlo_dma_addr = FUNC1(iface->txLoAddr);
	tp->card_state = Sleeping;

	tp->offload = TYPHOON_OFFLOAD_IP_CHKSUM | TYPHOON_OFFLOAD_TCP_CHKSUM;
	tp->offload |= TYPHOON_OFFLOAD_UDP_CHKSUM | TSO_OFFLOAD_ON;
	tp->offload |= TYPHOON_OFFLOAD_VLAN;

	FUNC4(&tp->command_lock);

	/* Force the writes to the shared memory area out before continuing. */
	FUNC5();
}