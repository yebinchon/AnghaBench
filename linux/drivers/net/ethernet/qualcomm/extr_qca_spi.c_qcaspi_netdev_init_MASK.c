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
struct qcaspi_stats {int dummy; } ;
struct qcaspi {int buffer_size; TYPE_1__* net_dev; int /*<<< orphan*/  rx_buffer; int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  stats; int /*<<< orphan*/ * spi_thread; int /*<<< orphan*/  burst_len; int /*<<< orphan*/  clkspeed; } ;
struct net_device {int mtu; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QCAFRM_FOOTER_LEN ; 
 int QCAFRM_HEADER_LEN ; 
 int QCAFRM_MAX_MTU ; 
 int VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct qcaspi* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  qcaspi_burst_len ; 
 int /*<<< orphan*/  qcaspi_clkspeed ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev)
{
	struct qcaspi *qca = FUNC5(dev);

	dev->mtu = QCAFRM_MAX_MTU;
	dev->type = ARPHRD_ETHER;
	qca->clkspeed = qcaspi_clkspeed;
	qca->burst_len = qcaspi_burst_len;
	qca->spi_thread = NULL;
	qca->buffer_size = (dev->mtu + VLAN_ETH_HLEN + QCAFRM_HEADER_LEN +
		QCAFRM_FOOTER_LEN + 4) * 4;

	FUNC2(&qca->stats, 0, sizeof(struct qcaspi_stats));

	qca->rx_buffer = FUNC1(qca->buffer_size, GFP_KERNEL);
	if (!qca->rx_buffer)
		return -ENOBUFS;

	qca->rx_skb = FUNC3(dev, qca->net_dev->mtu +
						VLAN_ETH_HLEN);
	if (!qca->rx_skb) {
		FUNC0(qca->rx_buffer);
		FUNC4(qca->net_dev, "Failed to allocate RX sk_buff.\n");
		return -ENOBUFS;
	}

	return 0;
}