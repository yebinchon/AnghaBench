#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {TYPE_1__ dmx; } ;
struct cx231xx_dvb {int /*<<< orphan*/ ** i2c_client_demod; int /*<<< orphan*/ * i2c_client_tuner; int /*<<< orphan*/  adapter; scalar_t__* frontend; TYPE_3__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  fe_hw; int /*<<< orphan*/  fe_mem; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct cx231xx_dvb *dvb)
{
	FUNC4(&dvb->net);
	dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_mem);
	dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_hw);
	FUNC1(&dvb->dmxdev);
	FUNC0(&dvb->demux);
	if (dvb->frontend[1])
		FUNC6(dvb->frontend[1]);
	FUNC6(dvb->frontend[0]);
	if (dvb->frontend[1])
		FUNC2(dvb->frontend[1]);
	FUNC2(dvb->frontend[0]);
	FUNC5(&dvb->adapter);

	/* remove I2C tuner */
	FUNC3(dvb->i2c_client_tuner);
	dvb->i2c_client_tuner = NULL;
	/* remove I2C demod(s) */
	FUNC3(dvb->i2c_client_demod[1]);
	dvb->i2c_client_demod[1] = NULL;
	FUNC3(dvb->i2c_client_demod[0]);
	dvb->i2c_client_demod[0] = NULL;
}