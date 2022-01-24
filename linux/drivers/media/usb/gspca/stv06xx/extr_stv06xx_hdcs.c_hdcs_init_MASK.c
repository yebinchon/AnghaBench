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
struct sd {scalar_t__ bridge; struct hdcs* sensor_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct hdcs {int psmp; TYPE_1__ array; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int FUNC1 (int) ; 
 scalar_t__ BRIDGE_STV602 ; 
 int HDCS_ADC_START_SIG_DUR ; 
 int FUNC2 (struct sd*) ; 
 int HDCS_TCTRL ; 
 scalar_t__ FUNC3 (struct sd*) ; 
 int STV_STV0600_EMULATION ; 
 int /*<<< orphan*/  FUNC4 (struct sd*) ; 
 int FUNC5 (struct sd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sd*,int,int) ; 
 int FUNC7 (struct sd*,int,int) ; 
 int** stv_bridge_init ; 
 int** stv_sensor_init ; 

__attribute__((used)) static int FUNC8(struct sd *sd)
{
	struct hdcs *hdcs = sd->sensor_priv;
	int i, err = 0;

	/* Set the STV0602AA in STV0600 emulation mode */
	if (sd->bridge == BRIDGE_STV602)
		FUNC6(sd, STV_STV0600_EMULATION, 1);

	/* Execute the bridge init */
	for (i = 0; i < FUNC0(stv_bridge_init) && !err; i++) {
		err = FUNC6(sd, stv_bridge_init[i][0],
					   stv_bridge_init[i][1]);
	}
	if (err < 0)
		return err;

	/* sensor soft reset */
	FUNC4(sd);

	/* Execute the sensor init */
	for (i = 0; i < FUNC0(stv_sensor_init) && !err; i++) {
		err = FUNC7(sd, stv_sensor_init[i][0],
					     stv_sensor_init[i][1]);
	}
	if (err < 0)
		return err;

	/* Enable continuous frame capture, bit 2: stop when frame complete */
	err = FUNC7(sd, FUNC2(sd), FUNC1(3));
	if (err < 0)
		return err;

	/* Set PGA sample duration
	(was 0x7E for the STV602, but caused slow framerate with HDCS-1020) */
	if (FUNC3(sd))
		err = FUNC7(sd, HDCS_TCTRL,
				(HDCS_ADC_START_SIG_DUR << 6) | hdcs->psmp);
	else
		err = FUNC7(sd, HDCS_TCTRL,
				(HDCS_ADC_START_SIG_DUR << 5) | hdcs->psmp);
	if (err < 0)
		return err;

	return FUNC5(sd, hdcs->array.width, hdcs->array.height);
}