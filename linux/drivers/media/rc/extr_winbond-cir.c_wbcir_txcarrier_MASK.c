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
typedef  int u32 ;
struct wbcir_data {scalar_t__ txstate; int txcarrier; int /*<<< orphan*/  spinlock; scalar_t__ sbase; } ;
struct rc_dev {struct wbcir_data* priv; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  WBCIR_BANK_7 ; 
 scalar_t__ WBCIR_REG_SP3_IRTXMC ; 
 scalar_t__ WBCIR_TXSTATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct wbcir_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC5(struct rc_dev *dev, u32 carrier)
{
	struct wbcir_data *data = dev->priv;
	unsigned long flags;
	u8 val;
	u32 freq;

	freq = FUNC0(carrier, 1000);
	if (freq < 30 || freq > 60)
		return -EINVAL;

	switch (freq) {
	case 58:
	case 59:
	case 60:
		val = freq - 58;
		freq *= 1000;
		break;
	case 57:
		val = freq - 27;
		freq = 56900;
		break;
	default:
		val = freq - 27;
		freq *= 1000;
		break;
	}

	FUNC1(&data->spinlock, flags);
	if (data->txstate != WBCIR_TXSTATE_INACTIVE) {
		FUNC2(&data->spinlock, flags);
		return -EBUSY;
	}

	if (data->txcarrier != freq) {
		FUNC3(data, WBCIR_BANK_7);
		FUNC4(data->sbase + WBCIR_REG_SP3_IRTXMC, val, 0x1F);
		data->txcarrier = freq;
	}

	FUNC2(&data->spinlock, flags);
	return 0;
}