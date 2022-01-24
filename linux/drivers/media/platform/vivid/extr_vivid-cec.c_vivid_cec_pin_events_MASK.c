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
struct vivid_dev {int /*<<< orphan*/ * cec_tx_adap; int /*<<< orphan*/  cec_rx_adap; } ;
struct cec_msg {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 unsigned int MAX_OUTPUTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cec_msg const*,int) ; 

__attribute__((used)) static void FUNC2(struct vivid_dev *dev,
				 const struct cec_msg *msg, bool nacked)
{
	ktime_t ts = FUNC0();
	unsigned int i;

	FUNC1(dev->cec_rx_adap, ts, msg, nacked);
	for (i = 0; i < MAX_OUTPUTS; i++)
		FUNC1(dev->cec_tx_adap[i], ts, msg, nacked);
}