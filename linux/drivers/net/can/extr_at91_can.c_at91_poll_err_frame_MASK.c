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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct can_frame {int can_id; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int /*<<< orphan*/  bus_error; } ;
struct TYPE_6__ {TYPE_2__ can_stats; } ;
struct at91_priv {TYPE_3__ can; } ;

/* Variables and functions */
 int AT91_IRQ_AERR ; 
 int AT91_IRQ_BERR ; 
 int AT91_IRQ_CERR ; 
 int AT91_IRQ_FERR ; 
 int AT91_IRQ_SERR ; 
 int CAN_ERR_ACK ; 
 int CAN_ERR_BUSERROR ; 
 int CAN_ERR_PROT ; 
 int /*<<< orphan*/  CAN_ERR_PROT_BIT ; 
 int /*<<< orphan*/  CAN_ERR_PROT_FORM ; 
 int /*<<< orphan*/  CAN_ERR_PROT_STUFF ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct at91_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
		struct can_frame *cf, u32 reg_sr)
{
	struct at91_priv *priv = FUNC1(dev);

	/* CRC error */
	if (reg_sr & AT91_IRQ_CERR) {
		FUNC0(dev, "CERR irq\n");
		dev->stats.rx_errors++;
		priv->can.can_stats.bus_error++;
		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
	}

	/* Stuffing Error */
	if (reg_sr & AT91_IRQ_SERR) {
		FUNC0(dev, "SERR irq\n");
		dev->stats.rx_errors++;
		priv->can.can_stats.bus_error++;
		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
		cf->data[2] |= CAN_ERR_PROT_STUFF;
	}

	/* Acknowledgement Error */
	if (reg_sr & AT91_IRQ_AERR) {
		FUNC0(dev, "AERR irq\n");
		dev->stats.tx_errors++;
		cf->can_id |= CAN_ERR_ACK;
	}

	/* Form error */
	if (reg_sr & AT91_IRQ_FERR) {
		FUNC0(dev, "FERR irq\n");
		dev->stats.rx_errors++;
		priv->can.can_stats.bus_error++;
		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
		cf->data[2] |= CAN_ERR_PROT_FORM;
	}

	/* Bit Error */
	if (reg_sr & AT91_IRQ_BERR) {
		FUNC0(dev, "BERR irq\n");
		dev->stats.tx_errors++;
		priv->can.can_stats.bus_error++;
		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;
		cf->data[2] |= CAN_ERR_PROT_BIT;
	}
}