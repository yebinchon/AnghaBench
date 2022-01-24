#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_16__ {TYPE_1__ dev; scalar_t__ name; TYPE_5__* algo_data; } ;
struct TYPE_13__ {scalar_t__ newi2c; int i2c_clock_period; } ;
struct TYPE_14__ {TYPE_6__* adapter; } ;
struct TYPE_15__ {int udelay; struct ivtv* data; } ;
struct ivtv {int instance; TYPE_6__ i2c_adap; TYPE_3__ options; TYPE_2__* pdev; TYPE_4__ i2c_client; int /*<<< orphan*/  v4l2_dev; TYPE_5__ i2c_algo; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  hw_addrs ; 
 int /*<<< orphan*/  hw_devicenames ; 
 int FUNC3 (TYPE_6__*) ; 
 int FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_6__ ivtv_i2c_adap_hw_template ; 
 TYPE_6__ ivtv_i2c_adap_template ; 
 TYPE_5__ ivtv_i2c_algo_template ; 
 TYPE_4__ ivtv_i2c_client_template ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

int FUNC10(struct ivtv *itv)
{
	int retval;

	FUNC1("i2c init\n");

	/* Sanity checks for the I2C hardware arrays. They must be the
	 * same size.
	 */
	if (FUNC0(hw_devicenames) != FUNC0(hw_addrs)) {
		FUNC2("Mismatched I2C hardware arrays\n");
		return -ENODEV;
	}
	if (itv->options.newi2c > 0) {
		itv->i2c_adap = ivtv_i2c_adap_hw_template;
	} else {
		itv->i2c_adap = ivtv_i2c_adap_template;
		itv->i2c_algo = ivtv_i2c_algo_template;
	}
	itv->i2c_algo.udelay = itv->options.i2c_clock_period / 2;
	itv->i2c_algo.data = itv;
	itv->i2c_adap.algo_data = &itv->i2c_algo;

	FUNC8(itv->i2c_adap.name + FUNC9(itv->i2c_adap.name), " #%d",
		itv->instance);
	FUNC5(&itv->i2c_adap, &itv->v4l2_dev);

	itv->i2c_client = ivtv_i2c_client_template;
	itv->i2c_client.adapter = &itv->i2c_adap;
	itv->i2c_adap.dev.parent = &itv->pdev->dev;

	FUNC1("setting scl and sda to 1\n");
	FUNC6(itv, 1);
	FUNC7(itv, 1);

	if (itv->options.newi2c > 0)
		retval = FUNC3(&itv->i2c_adap);
	else
		retval = FUNC4(&itv->i2c_adap);

	return retval;
}