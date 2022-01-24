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
struct pvr2_dvb_adapter {int /*<<< orphan*/ ** i2c_client_demod; int /*<<< orphan*/ * i2c_client_tuner; int /*<<< orphan*/ ** fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pvr2_dvb_adapter *adap)
{
	if (adap->fe[1]) {
		FUNC2(adap->fe[1]);
		FUNC0(adap->fe[1]);
		adap->fe[1] = NULL;
	}
	if (adap->fe[0]) {
		FUNC2(adap->fe[0]);
		FUNC0(adap->fe[0]);
		adap->fe[0] = NULL;
	}

	FUNC1(adap->i2c_client_tuner);
	adap->i2c_client_tuner = NULL;
	FUNC1(adap->i2c_client_demod[1]);
	adap->i2c_client_demod[1] = NULL;
	FUNC1(adap->i2c_client_demod[0]);
	adap->i2c_client_demod[0] = NULL;

	return 0;
}