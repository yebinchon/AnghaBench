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
struct qcaspi {int /*<<< orphan*/  rx_skb; scalar_t__ buffer_size; int /*<<< orphan*/  rx_buffer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qcaspi* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
	struct qcaspi *qca = FUNC2(dev);

	FUNC1(qca->rx_buffer);
	qca->buffer_size = 0;
	FUNC0(qca->rx_skb);
}