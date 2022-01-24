#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct serio_driver {int dummy; } ;
struct serio {int /*<<< orphan*/  dev; } ;
struct rain {TYPE_2__* adap; int /*<<< orphan*/ * dev; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  work; struct serio* serio; } ;
struct cec_log_addrs {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_1__ devnode; } ;

/* Variables and functions */
 int CEC_CAP_DEFAULTS ; 
 int CEC_CAP_MONITOR_ALL ; 
 int CEC_CAP_PHYS_ADDR ; 
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,struct rain*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rain*) ; 
 struct rain* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rain_cec_adap_ops ; 
 int /*<<< orphan*/  rain_irq_work_handler ; 
 int FUNC9 (struct rain*,struct serio*,struct cec_log_addrs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*) ; 
 int FUNC11 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC12 (struct serio*,struct rain*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct serio *serio, struct serio_driver *drv)
{
	u32 caps = CEC_CAP_DEFAULTS | CEC_CAP_PHYS_ADDR | CEC_CAP_MONITOR_ALL;
	struct rain *rain;
	int err = -ENOMEM;
	struct cec_log_addrs log_addrs = {};
	u16 pa = CEC_PHYS_ADDR_INVALID;

	rain = FUNC7(sizeof(*rain), GFP_KERNEL);

	if (!rain)
		return -ENOMEM;

	rain->serio = serio;
	rain->adap = FUNC2(&rain_cec_adap_ops, rain,
					  FUNC5(&serio->dev), caps, 1);
	err = FUNC1(rain->adap);
	if (err < 0)
		goto free_device;

	rain->dev = &serio->dev;
	FUNC12(serio, rain);
	FUNC0(&rain->work, rain_irq_work_handler);
	FUNC8(&rain->write_lock);
	FUNC13(&rain->buf_lock);

	err = FUNC11(serio, drv);
	if (err)
		goto delete_adap;

	err = FUNC9(rain, serio, &log_addrs, &pa);
	if (err)
		goto close_serio;

	err = FUNC4(rain->adap, &serio->dev);
	if (err < 0)
		goto close_serio;

	rain->dev = &rain->adap->devnode.dev;
	return 0;

close_serio:
	FUNC10(serio);
delete_adap:
	FUNC3(rain->adap);
	FUNC12(serio, NULL);
free_device:
	FUNC6(rain);
	return err;
}