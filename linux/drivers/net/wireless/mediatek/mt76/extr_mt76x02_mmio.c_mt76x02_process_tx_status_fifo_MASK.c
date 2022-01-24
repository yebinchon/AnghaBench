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
typedef  int u8 ;
struct mt76x02_tx_status {int dummy; } ;
struct mt76x02_dev {int /*<<< orphan*/  txstatus_fifo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct mt76x02_tx_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,struct mt76x02_tx_status*,int*) ; 

__attribute__((used)) static void FUNC2(struct mt76x02_dev *dev)
{
	struct mt76x02_tx_status stat;
	u8 update = 1;

	while (FUNC0(&dev->txstatus_fifo, &stat))
		FUNC1(dev, &stat, &update);
}