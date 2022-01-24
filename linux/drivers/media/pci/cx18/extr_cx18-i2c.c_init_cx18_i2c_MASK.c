#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct cx18 {int instance; TYPE_3__* i2c_adap; TYPE_6__* i2c_algo_cb_data; TYPE_2__* pci_dev; int /*<<< orphan*/  v4l2_dev; TYPE_8__* i2c_algo; } ;
struct TYPE_14__ {TYPE_6__* data; } ;
struct TYPE_13__ {int bus_index; struct cx18* cx; } ;
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_12__ {TYPE_1__ dev; scalar_t__ name; TYPE_8__* algo_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ CX18_GPIO_RESET_I2C ; 
 int /*<<< orphan*/  CX18_HW_GPIO_RESET_CTRL ; 
 int CX18_REG_I2C_1_WR ; 
 int CX18_REG_I2C_2_WR ; 
 int HW2_I2C1_INT ; 
 int HW2_I2C2_INT ; 
 int HW2_INT_CLR_STATUS ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ cx18_i2c_adap_template ; 
 TYPE_8__ cx18_i2c_algo_template ; 
 int FUNC2 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18*,int,int,int,int) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

int FUNC13(struct cx18 *cx)
{
	int i, err;
	FUNC0("i2c init\n");

	for (i = 0; i < 2; i++) {
		/* Setup algorithm for adapter */
		cx->i2c_algo[i] = cx18_i2c_algo_template;
		cx->i2c_algo_cb_data[i].cx = cx;
		cx->i2c_algo_cb_data[i].bus_index = i;
		cx->i2c_algo[i].data = &cx->i2c_algo_cb_data[i];

		/* Setup adapter */
		cx->i2c_adap[i] = cx18_i2c_adap_template;
		cx->i2c_adap[i].algo_data = &cx->i2c_algo[i];
		FUNC11(cx->i2c_adap[i].name + FUNC12(cx->i2c_adap[i].name),
				" #%d-%d", cx->instance, i);
		FUNC9(&cx->i2c_adap[i], &cx->v4l2_dev);
		cx->i2c_adap[i].dev.parent = &cx->pci_dev->dev;
	}

	if (FUNC2(cx, CX18_REG_I2C_2_WR) != 0x0003c02f) {
		/* Reset/Unreset I2C hardware block */
		/* Clock select 220MHz */
		FUNC6(cx, 0x10000000, 0xc71004,
					  0x00000000, 0x10001000);
		/* Clock Enable */
		FUNC6(cx, 0x10001000, 0xc71024,
					  0x00001000, 0x10001000);
	}
	/* courtesy of Steven Toth <stoth@hauppauge.com> */
	FUNC6(cx, 0x00c00000, 0xc7001c, 0x00000000, 0x00c000c0);
	FUNC10(10);
	FUNC6(cx, 0x00c000c0, 0xc7001c, 0x000000c0, 0x00c000c0);
	FUNC10(10);
	FUNC6(cx, 0x00c00000, 0xc7001c, 0x00000000, 0x00c000c0);
	FUNC10(10);

	/* Set to edge-triggered intrs. */
	FUNC5(cx, 0x00c00000, 0xc730c8);
	/* Clear any stale intrs */
	FUNC6(cx, HW2_I2C1_INT|HW2_I2C2_INT, HW2_INT_CLR_STATUS,
		       ~(HW2_I2C1_INT|HW2_I2C2_INT), HW2_I2C1_INT|HW2_I2C2_INT);

	/* Hw I2C1 Clock Freq ~100kHz */
	FUNC5(cx, 0x00021c0f & ~4, CX18_REG_I2C_1_WR);
	FUNC3(&cx->i2c_algo_cb_data[0], 1);
	FUNC4(&cx->i2c_algo_cb_data[0], 1);

	/* Hw I2C2 Clock Freq ~100kHz */
	FUNC5(cx, 0x00021c0f & ~4, CX18_REG_I2C_2_WR);
	FUNC3(&cx->i2c_algo_cb_data[1], 1);
	FUNC4(&cx->i2c_algo_cb_data[1], 1);

	FUNC1(cx, CX18_HW_GPIO_RESET_CTRL,
		     core, reset, (u32) CX18_GPIO_RESET_I2C);

	err = FUNC7(&cx->i2c_adap[0]);
	if (err)
		goto err;
	err = FUNC7(&cx->i2c_adap[1]);
	if (err)
		goto err_del_bus_0;
	return 0;

 err_del_bus_0:
	FUNC8(&cx->i2c_adap[0]);
 err:
	return err;
}