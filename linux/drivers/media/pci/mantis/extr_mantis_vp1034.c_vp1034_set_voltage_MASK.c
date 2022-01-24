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
typedef  int /*<<< orphan*/  u32 ;
struct mantis_pci {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
typedef  enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {struct mantis_pci* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  MANTIS_GPIF_DOUT ; 
#define  SEC_VOLTAGE_13 130 
#define  SEC_VOLTAGE_18 129 
#define  SEC_VOLTAGE_OFF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct dvb_frontend *fe, enum fe_sec_voltage voltage)
{
	struct mantis_pci *mantis = fe->dvb->priv;

	switch (voltage) {
	case SEC_VOLTAGE_13:
		FUNC0(MANTIS_ERROR, 1, "Polarization=[13V]");
		FUNC1(mantis, 13, 1);
		FUNC1(mantis, 14, 0);
		break;
	case SEC_VOLTAGE_18:
		FUNC0(MANTIS_ERROR, 1, "Polarization=[18V]");
		FUNC1(mantis, 13, 1);
		FUNC1(mantis, 14, 1);
		break;
	case SEC_VOLTAGE_OFF:
		FUNC0(MANTIS_ERROR, 1, "Frontend (dummy) POWERDOWN");
		break;
	default:
		FUNC0(MANTIS_ERROR, 1, "Invalid = (%d)", (u32) voltage);
		return -EINVAL;
	}
	FUNC2(0x00, MANTIS_GPIF_DOUT);

	return 0;
}