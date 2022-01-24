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
struct smi_port {int idx; int /*<<< orphan*/  fe_type; struct smi_dev* dev; } ;
struct smi_dev {TYPE_1__* info; } ;
struct TYPE_2__ {int ts_0; int ts_1; int /*<<< orphan*/  fe_1; int /*<<< orphan*/  fe_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smi_port*) ; 
 int FUNC1 (struct smi_port*) ; 
 int FUNC2 (struct smi_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct smi_port*) ; 
 int FUNC4 (struct smi_port*,int) ; 

__attribute__((used)) static int FUNC5(struct smi_dev *dev,
		struct smi_port *port, int index)
{
	int ret, dmachs;

	port->dev = dev;
	port->idx = index;
	port->fe_type = (index == 0) ? dev->info->fe_0 : dev->info->fe_1;
	dmachs = (index == 0) ? dev->info->ts_0 : dev->info->ts_1;
	/* port init.*/
	ret = FUNC4(port, dmachs);
	if (ret < 0)
		return ret;
	/* dvb init.*/
	ret = FUNC1(port);
	if (ret < 0)
		goto err_del_port_init;
	/* fe init.*/
	ret = FUNC2(port);
	if (ret < 0)
		goto err_del_dvb_init;
	return 0;
err_del_dvb_init:
	FUNC0(port);
err_del_port_init:
	FUNC3(port);
	return ret;
}