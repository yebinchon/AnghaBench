#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dentry {int dummy; } ;
struct ab8500 {int /*<<< orphan*/  mask_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_ADC_NAME_STRING ; 
 int /*<<< orphan*/  AB8500_MISC ; 
 int /*<<< orphan*/  AB8500_NAME_STRING ; 
 int /*<<< orphan*/  AB8500_NR_IRQS ; 
 int AB8500_REV_REG ; 
 int /*<<< orphan*/  AB8505_NR_IRQS ; 
 int /*<<< orphan*/  AB8540_NR_IRQS ; 
 int /*<<< orphan*/  AB9540_NR_IRQS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRUGO ; 
 int S_IWGRP ; 
 int S_IWUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  ab8500_address_fops ; 
 int /*<<< orphan*/  ab8500_all_banks_fops ; 
 int /*<<< orphan*/  ab8500_bank_fops ; 
 int /*<<< orphan*/  ab8500_bank_registers_fops ; 
 int /*<<< orphan*/  ab8500_debug_ranges ; 
 int /*<<< orphan*/  ab8500_gpadc_acc_detect1_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_acc_detect2_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_aux1_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_aux2_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_avg_sample_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_bat_ctrl_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_bk_bat_v_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_btemp_ball_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_conv_type_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_die_temp_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_main_bat_v_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_main_charger_c_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_main_charger_v_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_trig_edge_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_trig_timer_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_usb_charger_c_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_usb_id_fops ; 
 int /*<<< orphan*/  ab8500_gpadc_vbus_v_fops ; 
 int /*<<< orphan*/  ab8500_hwreg_fops ; 
 int /*<<< orphan*/  ab8500_interrupts_fops ; 
 int /*<<< orphan*/  ab8500_modem_fops ; 
 int /*<<< orphan*/  ab8500_subscribe_fops ; 
 int /*<<< orphan*/  ab8500_unsubscribe_fops ; 
 int /*<<< orphan*/  ab8500_val_fops ; 
 int /*<<< orphan*/  ab8505_debug_ranges ; 
 int /*<<< orphan*/  ab8540_debug_ranges ; 
 int /*<<< orphan*/  ab8540_gpadc_bat_ctrl_and_ibat_fops ; 
 int /*<<< orphan*/  ab8540_gpadc_bat_temp_and_ibat_fops ; 
 int /*<<< orphan*/  ab8540_gpadc_otp_calib_fops ; 
 int /*<<< orphan*/  ab8540_gpadc_vbat_meas_and_ibat_fops ; 
 int /*<<< orphan*/  ab8540_gpadc_vbat_true_meas_and_ibat_fops ; 
 int /*<<< orphan*/  ab8540_gpadc_vbat_true_meas_fops ; 
 int /*<<< orphan*/  ab8540_gpadc_xtal_temp_fops ; 
 int debug_address ; 
 int /*<<< orphan*/  debug_bank ; 
 int /*<<< orphan*/  debug_ranges ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* dev_attr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,scalar_t__) ; 
 struct ab8500* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* event_name ; 
 int /*<<< orphan*/  irq_ab8500 ; 
 void* irq_count ; 
 scalar_t__ irq_first ; 
 scalar_t__ irq_last ; 
 scalar_t__ FUNC5 (struct ab8500*) ; 
 scalar_t__ FUNC6 (struct ab8500*) ; 
 scalar_t__ FUNC7 (struct ab8500*) ; 
 scalar_t__ FUNC8 (struct ab8500*) ; 
 int /*<<< orphan*/  num_interrupt_lines ; 
 int /*<<< orphan*/  num_irqs ; 
 scalar_t__ FUNC9 (struct platform_device*,char*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *plf)
{
	struct dentry *ab8500_dir;
	struct dentry *ab8500_gpadc_dir;
	struct ab8500 *ab8500;
	struct resource *res;

	debug_bank = AB8500_MISC;
	debug_address = AB8500_REV_REG & 0x00FF;

	ab8500 = FUNC3(plf->dev.parent);
	num_irqs = ab8500->mask_size;

	irq_count = FUNC4(&plf->dev,
				 num_irqs, sizeof(*irq_count), GFP_KERNEL);
	if (!irq_count)
		return -ENOMEM;

	dev_attr = FUNC4(&plf->dev,
				num_irqs, sizeof(*dev_attr), GFP_KERNEL);
	if (!dev_attr)
		return -ENOMEM;

	event_name = FUNC4(&plf->dev,
				  num_irqs, sizeof(*event_name), GFP_KERNEL);
	if (!event_name)
		return -ENOMEM;

	res = FUNC10(plf, 0, "IRQ_AB8500");
	if (!res) {
		FUNC2(&plf->dev, "AB8500 irq not found, err %d\n", irq_first);
		return -ENXIO;
	}
	irq_ab8500 = res->start;

	irq_first = FUNC9(plf, "IRQ_FIRST");
	if (irq_first < 0)
		return irq_first;

	irq_last = FUNC9(plf, "IRQ_LAST");
	if (irq_last < 0)
		return irq_last;

	ab8500_dir = FUNC0(AB8500_NAME_STRING, NULL);

	ab8500_gpadc_dir = FUNC0(AB8500_ADC_NAME_STRING,
					      ab8500_dir);

	FUNC1("all-bank-registers", S_IRUGO, ab8500_dir,
			    &plf->dev, &ab8500_bank_registers_fops);
	FUNC1("all-banks", S_IRUGO, ab8500_dir,
			    &plf->dev, &ab8500_all_banks_fops);
	FUNC1("register-bank", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_dir, &plf->dev, &ab8500_bank_fops);
	FUNC1("register-address", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_dir, &plf->dev, &ab8500_address_fops);
	FUNC1("register-value", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_dir, &plf->dev, &ab8500_val_fops);
	FUNC1("irq-subscribe", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_dir, &plf->dev, &ab8500_subscribe_fops);

	if (FUNC5(ab8500)) {
		debug_ranges = ab8500_debug_ranges;
		num_interrupt_lines = AB8500_NR_IRQS;
	} else if (FUNC6(ab8500)) {
		debug_ranges = ab8505_debug_ranges;
		num_interrupt_lines = AB8505_NR_IRQS;
	} else if (FUNC8(ab8500)) {
		debug_ranges = ab8505_debug_ranges;
		num_interrupt_lines = AB9540_NR_IRQS;
	} else if (FUNC7(ab8500)) {
		debug_ranges = ab8540_debug_ranges;
		num_interrupt_lines = AB8540_NR_IRQS;
	}

	FUNC1("interrupts", (S_IRUGO), ab8500_dir, &plf->dev,
			    &ab8500_interrupts_fops);
	FUNC1("irq-unsubscribe", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_dir, &plf->dev, &ab8500_unsubscribe_fops);
	FUNC1("hwreg", (S_IRUGO | S_IWUSR | S_IWGRP), ab8500_dir,
			    &plf->dev, &ab8500_hwreg_fops);
	FUNC1("all-modem-registers", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_dir, &plf->dev, &ab8500_modem_fops);
	FUNC1("bat_ctrl", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_bat_ctrl_fops);
	FUNC1("btemp_ball", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_btemp_ball_fops);
	FUNC1("main_charger_v", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_main_charger_v_fops);
	FUNC1("acc_detect1", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_acc_detect1_fops);
	FUNC1("acc_detect2", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_acc_detect2_fops);
	FUNC1("adc_aux1", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_aux1_fops);
	FUNC1("adc_aux2", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_aux2_fops);
	FUNC1("main_bat_v", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_main_bat_v_fops);
	FUNC1("vbus_v", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_vbus_v_fops);
	FUNC1("main_charger_c", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_main_charger_c_fops);
	FUNC1("usb_charger_c", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_usb_charger_c_fops);
	FUNC1("bk_bat_v", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_bk_bat_v_fops);
	FUNC1("die_temp", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_die_temp_fops);
	FUNC1("usb_id", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_usb_id_fops);
	if (FUNC7(ab8500)) {
		FUNC1("xtal_temp", (S_IRUGO | S_IWUSR | S_IWGRP),
				    ab8500_gpadc_dir, &plf->dev,
				    &ab8540_gpadc_xtal_temp_fops);
		FUNC1("vbattruemeas", (S_IRUGO | S_IWUSR | S_IWGRP),
				    ab8500_gpadc_dir, &plf->dev,
				    &ab8540_gpadc_vbat_true_meas_fops);
		FUNC1("batctrl_and_ibat", (S_IRUGO | S_IWUGO),
				    ab8500_gpadc_dir, &plf->dev,
				    &ab8540_gpadc_bat_ctrl_and_ibat_fops);
		FUNC1("vbatmeas_and_ibat", (S_IRUGO | S_IWUGO),
				    ab8500_gpadc_dir, &plf->dev,
				    &ab8540_gpadc_vbat_meas_and_ibat_fops);
		FUNC1("vbattruemeas_and_ibat", (S_IRUGO | S_IWUGO),
				    ab8500_gpadc_dir, &plf->dev,
				    &ab8540_gpadc_vbat_true_meas_and_ibat_fops);
		FUNC1("battemp_and_ibat", (S_IRUGO | S_IWUGO),
				    ab8500_gpadc_dir, &plf->dev,
				    &ab8540_gpadc_bat_temp_and_ibat_fops);
		FUNC1("otp_calib", (S_IRUGO | S_IWUSR | S_IWGRP),
				    ab8500_gpadc_dir, &plf->dev,
				    &ab8540_gpadc_otp_calib_fops);
	}
	FUNC1("avg_sample", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_avg_sample_fops);
	FUNC1("trig_edge", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_trig_edge_fops);
	FUNC1("trig_timer", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_trig_timer_fops);
	FUNC1("conv_type", (S_IRUGO | S_IWUSR | S_IWGRP),
			    ab8500_gpadc_dir, &plf->dev,
			    &ab8500_gpadc_conv_type_fops);

	return 0;
}