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
struct mt76_rate_power {int /*<<< orphan*/ * stbc; int /*<<< orphan*/ * ht; int /*<<< orphan*/ * vht; int /*<<< orphan*/ * ofdm; int /*<<< orphan*/ * cck; } ;
struct TYPE_2__ {struct mt76_rate_power rate_power; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_TX_ALC_CFG_0 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_0_CH_INIT_0 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_0_CH_INIT_1 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_0 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_1 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_2 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_3 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_4 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_7 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_8 ; 
 int /*<<< orphan*/  MT_TX_PWR_CFG_9 ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct mt76x02_dev *dev, int txp_0, int txp_1)
{
	struct mt76_rate_power *t = &dev->mt76.rate_power;

	FUNC0(dev, MT_TX_ALC_CFG_0, MT_TX_ALC_CFG_0_CH_INIT_0, txp_0);
	FUNC0(dev, MT_TX_ALC_CFG_0, MT_TX_ALC_CFG_0_CH_INIT_1, txp_1);

	FUNC1(dev, MT_TX_PWR_CFG_0,
		FUNC2(t->cck[0], t->cck[2], t->ofdm[0],
				      t->ofdm[2]));
	FUNC1(dev, MT_TX_PWR_CFG_1,
		FUNC2(t->ofdm[4], t->ofdm[6], t->ht[0],
				      t->ht[2]));
	FUNC1(dev, MT_TX_PWR_CFG_2,
		FUNC2(t->ht[4], t->ht[6], t->ht[8],
				      t->ht[10]));
	FUNC1(dev, MT_TX_PWR_CFG_3,
		FUNC2(t->ht[12], t->ht[14], t->stbc[0],
				      t->stbc[2]));
	FUNC1(dev, MT_TX_PWR_CFG_4,
		FUNC2(t->stbc[4], t->stbc[6], 0, 0));
	FUNC1(dev, MT_TX_PWR_CFG_7,
		FUNC2(t->ofdm[7], t->vht[8], t->ht[7],
				      t->vht[9]));
	FUNC1(dev, MT_TX_PWR_CFG_8,
		FUNC2(t->ht[14], 0, t->vht[8], t->vht[9]));
	FUNC1(dev, MT_TX_PWR_CFG_9,
		FUNC2(t->ht[7], 0, t->stbc[8], t->stbc[9]));
}