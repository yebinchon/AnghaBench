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
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int MT_TXQ_BK ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_dev*,int) ; 

void FUNC1(struct mt76_dev *dev)
{
	int i;

	for (i = 0; i <= MT_TXQ_BK; i++)
		FUNC0(dev, i);
}