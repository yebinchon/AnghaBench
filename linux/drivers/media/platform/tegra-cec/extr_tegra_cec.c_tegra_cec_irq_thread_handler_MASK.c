#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tegra_cec {int tx_done; int rx_done; scalar_t__ rx_buf_cnt; int /*<<< orphan*/  adap; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_status; } ;
struct device {int dummy; } ;
struct cec_msg {scalar_t__ len; int /*<<< orphan*/  msg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cec_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_cec* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct device *dev = data;
	struct tegra_cec *cec = FUNC2(dev);

	if (cec->tx_done) {
		FUNC1(cec->adap, cec->tx_status);
		cec->tx_done = false;
	}
	if (cec->rx_done) {
		struct cec_msg msg = {};

		msg.len = cec->rx_buf_cnt;
		FUNC3(msg.msg, cec->rx_buf, msg.len);
		FUNC0(cec->adap, &msg);
		cec->rx_done = false;
		cec->rx_buf_cnt = 0;
	}
	return IRQ_HANDLED;
}