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
struct pulse8 {int config_pending; int restoring_config; TYPE_2__* adap; int /*<<< orphan*/  ping_eeprom_work; scalar_t__ autonomous; int /*<<< orphan*/ * dev; int /*<<< orphan*/  config_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  work; struct serio* serio; } ;
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PING_PERIOD ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,struct pulse8*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pulse8*) ; 
 struct pulse8* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ persistent_config ; 
 int FUNC10 (struct pulse8*,struct cec_log_addrs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pulse8_cec_adap_ops ; 
 int /*<<< orphan*/  pulse8_irq_work_handler ; 
 int /*<<< orphan*/  pulse8_ping_eeprom_work_handler ; 
 int FUNC11 (struct pulse8*,struct serio*,struct cec_log_addrs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct serio*) ; 
 int FUNC14 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC15 (struct serio*,struct pulse8*) ; 

__attribute__((used)) static int FUNC16(struct serio *serio, struct serio_driver *drv)
{
	u32 caps = CEC_CAP_DEFAULTS | CEC_CAP_PHYS_ADDR | CEC_CAP_MONITOR_ALL;
	struct pulse8 *pulse8;
	int err = -ENOMEM;
	struct cec_log_addrs log_addrs = {};
	u16 pa = CEC_PHYS_ADDR_INVALID;

	pulse8 = FUNC8(sizeof(*pulse8), GFP_KERNEL);

	if (!pulse8)
		return -ENOMEM;

	pulse8->serio = serio;
	pulse8->adap = FUNC3(&pulse8_cec_adap_ops, pulse8,
					    FUNC6(&serio->dev), caps, 1);
	err = FUNC2(pulse8->adap);
	if (err < 0)
		goto free_device;

	pulse8->dev = &serio->dev;
	FUNC15(serio, pulse8);
	FUNC1(&pulse8->work, pulse8_irq_work_handler);
	FUNC9(&pulse8->write_lock);
	FUNC9(&pulse8->config_lock);
	pulse8->config_pending = false;

	err = FUNC14(serio, drv);
	if (err)
		goto delete_adap;

	err = FUNC11(pulse8, serio, &log_addrs, &pa);
	if (err)
		goto close_serio;

	err = FUNC5(pulse8->adap, &serio->dev);
	if (err < 0)
		goto close_serio;

	pulse8->dev = &pulse8->adap->devnode.dev;

	if (persistent_config && pulse8->autonomous) {
		err = FUNC10(pulse8, &log_addrs, pa);
		if (err)
			goto close_serio;
		pulse8->restoring_config = true;
	}

	FUNC0(&pulse8->ping_eeprom_work,
			  pulse8_ping_eeprom_work_handler);
	FUNC12(&pulse8->ping_eeprom_work, PING_PERIOD);

	return 0;

close_serio:
	FUNC13(serio);
delete_adap:
	FUNC4(pulse8->adap);
	FUNC15(serio, NULL);
free_device:
	FUNC7(pulse8);
	return err;
}