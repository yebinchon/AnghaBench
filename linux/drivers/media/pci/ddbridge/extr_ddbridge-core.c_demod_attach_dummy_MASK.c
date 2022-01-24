#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct ddb_input {int nr; TYPE_2__* port; } ;
struct ddb_dvb {int /*<<< orphan*/  fe; } ;
struct TYPE_4__ {TYPE_1__* dev; struct ddb_dvb* dvb; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dvb_dummy_fe_qam_attach ; 

__attribute__((used)) static int FUNC2(struct ddb_input *input)
{
	struct ddb_dvb *dvb = &input->port->dvb[input->nr & 1];
	struct device *dev = input->port->dev->dev;

	dvb->fe = FUNC1(dvb_dummy_fe_qam_attach);
	if (!dvb->fe) {
		FUNC0(dev, "QAM dummy attach failed!\n");
		return -ENODEV;
	}

	return 0;
}