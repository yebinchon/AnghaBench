#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct spi_device {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_error; } ;
struct TYPE_5__ {int state; scalar_t__ restart_ms; int ctrlmode; TYPE_1__ can_stats; } ;
struct hi3110_priv {int force_quit; int tx_len; int /*<<< orphan*/  hi3110_lock; struct net_device* net; TYPE_2__ can; struct spi_device* spi; } ;
struct can_frame {int* data; int can_id; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int CAN_CTRLMODE_BERR_REPORTING ; 
 int CAN_ERR_BUSERROR ; 
 int CAN_ERR_PROT ; 
 int CAN_ERR_PROT_BIT ; 
 int CAN_ERR_PROT_FORM ; 
 int CAN_ERR_PROT_LOC_ACK ; 
 int CAN_ERR_PROT_LOC_CRC_SEQ ; 
 int CAN_ERR_PROT_STUFF ; 
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int CAN_STATE_BUS_OFF ; 
 int CAN_STATE_ERROR_ACTIVE ; 
 int CAN_STATE_ERROR_PASSIVE ; 
 int CAN_STATE_ERROR_WARNING ; 
 int HI3110_ERR_ACKERR ; 
 int HI3110_ERR_BITERR ; 
 int HI3110_ERR_BUSOFF ; 
 int HI3110_ERR_CRCERR ; 
 int HI3110_ERR_FRMERR ; 
 int HI3110_ERR_PASSIVE_MASK ; 
 int HI3110_ERR_PROTOCOL_MASK ; 
 int HI3110_ERR_STUFERR ; 
 int HI3110_INT_BUSERR ; 
 int /*<<< orphan*/  HI3110_READ_ERR ; 
 int /*<<< orphan*/  HI3110_READ_INTF ; 
 int /*<<< orphan*/  HI3110_READ_REC ; 
 int /*<<< orphan*/  HI3110_READ_STATF ; 
 int /*<<< orphan*/  HI3110_READ_TEC ; 
 int HI3110_STAT_ERRW ; 
 int HI3110_STAT_RXFMTY ; 
 int HI3110_STAT_TXMTY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct can_frame*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*) ; 
 void* FUNC7 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev_id)
{
	struct hi3110_priv *priv = dev_id;
	struct spi_device *spi = priv->spi;
	struct net_device *net = priv->net;

	FUNC8(&priv->hi3110_lock);

	while (!priv->force_quit) {
		enum can_state new_state;
		u8 intf, eflag, statf;

		while (!(HI3110_STAT_RXFMTY &
			 (statf = FUNC7(spi, HI3110_READ_STATF)))) {
			FUNC5(spi);
		}

		intf = FUNC7(spi, HI3110_READ_INTF);
		eflag = FUNC7(spi, HI3110_READ_ERR);
		/* Update can state */
		if (eflag & HI3110_ERR_BUSOFF)
			new_state = CAN_STATE_BUS_OFF;
		else if (eflag & HI3110_ERR_PASSIVE_MASK)
			new_state = CAN_STATE_ERROR_PASSIVE;
		else if (statf & HI3110_STAT_ERRW)
			new_state = CAN_STATE_ERROR_WARNING;
		else
			new_state = CAN_STATE_ERROR_ACTIVE;

		if (new_state != priv->can.state) {
			struct can_frame *cf;
			struct sk_buff *skb;
			enum can_state rx_state, tx_state;
			u8 rxerr, txerr;

			skb = FUNC0(net, &cf);
			if (!skb)
				break;

			txerr = FUNC7(spi, HI3110_READ_TEC);
			rxerr = FUNC7(spi, HI3110_READ_REC);
			cf->data[6] = txerr;
			cf->data[7] = rxerr;
			tx_state = txerr >= rxerr ? new_state : 0;
			rx_state = txerr <= rxerr ? new_state : 0;
			FUNC2(net, cf, tx_state, rx_state);
			FUNC11(skb);

			if (new_state == CAN_STATE_BUS_OFF) {
				FUNC1(net);
				if (priv->can.restart_ms == 0) {
					priv->force_quit = 1;
					FUNC6(spi);
					break;
				}
			}
		}

		/* Update bus errors */
		if ((intf & HI3110_INT_BUSERR) &&
		    (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING)) {
			struct can_frame *cf;
			struct sk_buff *skb;

			/* Check for protocol errors */
			if (eflag & HI3110_ERR_PROTOCOL_MASK) {
				skb = FUNC0(net, &cf);
				if (!skb)
					break;

				cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
				priv->can.can_stats.bus_error++;
				priv->net->stats.rx_errors++;
				if (eflag & HI3110_ERR_BITERR)
					cf->data[2] |= CAN_ERR_PROT_BIT;
				else if (eflag & HI3110_ERR_FRMERR)
					cf->data[2] |= CAN_ERR_PROT_FORM;
				else if (eflag & HI3110_ERR_STUFERR)
					cf->data[2] |= CAN_ERR_PROT_STUFF;
				else if (eflag & HI3110_ERR_CRCERR)
					cf->data[3] |= CAN_ERR_PROT_LOC_CRC_SEQ;
				else if (eflag & HI3110_ERR_ACKERR)
					cf->data[3] |= CAN_ERR_PROT_LOC_ACK;

				cf->data[6] = FUNC7(spi, HI3110_READ_TEC);
				cf->data[7] = FUNC7(spi, HI3110_READ_REC);
				FUNC10(priv->net, "Bus Error\n");
				FUNC11(skb);
			}
		}

		if (priv->tx_len && statf & HI3110_STAT_TXMTY) {
			net->stats.tx_packets++;
			net->stats.tx_bytes += priv->tx_len - 1;
			FUNC4(net, CAN_LED_EVENT_TX);
			if (priv->tx_len) {
				FUNC3(net, 0);
				priv->tx_len = 0;
			}
			FUNC12(net);
		}

		if (intf == 0)
			break;
	}
	FUNC9(&priv->hi3110_lock);
	return IRQ_HANDLED;
}