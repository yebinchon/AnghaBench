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
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_off; int /*<<< orphan*/  error_passive; int /*<<< orphan*/  error_warning; } ;
struct TYPE_4__ {int state; TYPE_1__ can_stats; } ;
struct m_can_classdev {TYPE_2__ can; } ;
struct can_frame {int* data; scalar_t__ can_dlc; int /*<<< orphan*/  can_id; } ;
struct can_berr_counter {int txerr; int rxerr; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_BUSOFF ; 
 int /*<<< orphan*/  CAN_ERR_CRTL ; 
 int CAN_ERR_CRTL_RX_PASSIVE ; 
 int CAN_ERR_CRTL_RX_WARNING ; 
 int CAN_ERR_CRTL_TX_PASSIVE ; 
 int CAN_ERR_CRTL_TX_WARNING ; 
#define  CAN_STATE_BUS_OFF 130 
#define  CAN_STATE_ERROR_ACTIVE 129 
#define  CAN_STATE_ERROR_PASSIVE 128 
 int CAN_STATE_ERROR_WARNING ; 
 unsigned int ECR_RP ; 
 int /*<<< orphan*/  M_CAN_ECR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct can_berr_counter*) ; 
 struct sk_buff* FUNC1 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct m_can_classdev*) ; 
 unsigned int FUNC4 (struct m_can_classdev*,int /*<<< orphan*/ ) ; 
 struct m_can_classdev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				     enum can_state new_state)
{
	struct m_can_classdev *cdev = FUNC5(dev);
	struct net_device_stats *stats = &dev->stats;
	struct can_frame *cf;
	struct sk_buff *skb;
	struct can_berr_counter bec;
	unsigned int ecr;

	switch (new_state) {
	case CAN_STATE_ERROR_ACTIVE:
		/* error warning state */
		cdev->can.can_stats.error_warning++;
		cdev->can.state = CAN_STATE_ERROR_WARNING;
		break;
	case CAN_STATE_ERROR_PASSIVE:
		/* error passive state */
		cdev->can.can_stats.error_passive++;
		cdev->can.state = CAN_STATE_ERROR_PASSIVE;
		break;
	case CAN_STATE_BUS_OFF:
		/* bus-off state */
		cdev->can.state = CAN_STATE_BUS_OFF;
		FUNC3(cdev);
		cdev->can.can_stats.bus_off++;
		FUNC2(dev);
		break;
	default:
		break;
	}

	/* propagate the error condition to the CAN stack */
	skb = FUNC1(dev, &cf);
	if (FUNC7(!skb))
		return 0;

	FUNC0(dev, &bec);

	switch (new_state) {
	case CAN_STATE_ERROR_ACTIVE:
		/* error warning state */
		cf->can_id |= CAN_ERR_CRTL;
		cf->data[1] = (bec.txerr > bec.rxerr) ?
			CAN_ERR_CRTL_TX_WARNING :
			CAN_ERR_CRTL_RX_WARNING;
		cf->data[6] = bec.txerr;
		cf->data[7] = bec.rxerr;
		break;
	case CAN_STATE_ERROR_PASSIVE:
		/* error passive state */
		cf->can_id |= CAN_ERR_CRTL;
		ecr = FUNC4(cdev, M_CAN_ECR);
		if (ecr & ECR_RP)
			cf->data[1] |= CAN_ERR_CRTL_RX_PASSIVE;
		if (bec.txerr > 127)
			cf->data[1] |= CAN_ERR_CRTL_TX_PASSIVE;
		cf->data[6] = bec.txerr;
		cf->data[7] = bec.rxerr;
		break;
	case CAN_STATE_BUS_OFF:
		/* bus-off state */
		cf->can_id |= CAN_ERR_BUSOFF;
		break;
	default:
		break;
	}

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;
	FUNC6(skb);

	return 1;
}