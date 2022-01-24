#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_3__* dev; struct dib0700_adapter_state* priv; } ;
struct dib0700_state {int fw_use_new_i2c_api; } ;
struct TYPE_7__ {int /*<<< orphan*/ * (* init ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* i2c_enumeration ) (int /*<<< orphan*/ *,int,int,int,int) ;} ;
struct dib0700_adapter_state {TYPE_2__ dib8000_ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  i2c_adap; struct dib0700_state* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fe; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIO0 ; 
 int /*<<< orphan*/  GPIO10 ; 
 int /*<<< orphan*/  GPIO4 ; 
 int /*<<< orphan*/  GPIO6 ; 
 int /*<<< orphan*/  GPIO7 ; 
 int /*<<< orphan*/  GPIO9 ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dib8000_attach ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tfe8096p_dib8000_config ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_adapter *adap)
{
	struct dib0700_state *st = adap->dev->priv;
	u32 fw_version;
	struct dib0700_adapter_state *state = adap->priv;

	if (!FUNC3(dib8000_attach, &state->dib8000_ops))
		return -ENODEV;

	FUNC1(adap->dev, NULL, NULL, &fw_version, NULL);
	if (fw_version >= 0x10200)
		st->fw_use_new_i2c_api = 1;

	FUNC2(adap->dev, GPIO6, GPIO_OUT, 1);
	FUNC4(20);
	FUNC2(adap->dev, GPIO9, GPIO_OUT, 1);
	FUNC2(adap->dev, GPIO4, GPIO_OUT, 1);
	FUNC2(adap->dev, GPIO7, GPIO_OUT, 1);

	FUNC2(adap->dev, GPIO10, GPIO_OUT, 0);

	FUNC0(adap->dev, 72, 1);

	FUNC4(20);
	FUNC2(adap->dev, GPIO10, GPIO_OUT, 1);
	FUNC4(20);
	FUNC2(adap->dev, GPIO0, GPIO_OUT, 1);

	state->dib8000_ops.i2c_enumeration(&adap->dev->i2c_adap, 1, 0x10, 0x80, 1);

	adap->fe_adap[0].fe = state->dib8000_ops.init(&adap->dev->i2c_adap,
					     0x80, &tfe8096p_dib8000_config);

	return adap->fe_adap[0].fe == NULL ?  -ENODEV : 0;
}