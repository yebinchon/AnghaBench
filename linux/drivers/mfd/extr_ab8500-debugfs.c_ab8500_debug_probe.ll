; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_debug_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_debug_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }
%struct.ab8500 = type { i32 }
%struct.resource = type { i32 }

@AB8500_MISC = common dso_local global i32 0, align 4
@debug_bank = common dso_local global i32 0, align 4
@AB8500_REV_REG = common dso_local global i32 0, align 4
@debug_address = common dso_local global i32 0, align 4
@num_irqs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@irq_count = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr = common dso_local global i8* null, align 8
@event_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"IRQ_AB8500\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"AB8500 irq not found, err %d\0A\00", align 1
@irq_first = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@irq_ab8500 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"IRQ_FIRST\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"IRQ_LAST\00", align 1
@irq_last = common dso_local global i64 0, align 8
@AB8500_NAME_STRING = common dso_local global i32 0, align 4
@AB8500_ADC_NAME_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"all-bank-registers\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@ab8500_bank_registers_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"all-banks\00", align 1
@ab8500_all_banks_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"register-bank\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@ab8500_bank_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"register-address\00", align 1
@ab8500_address_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"register-value\00", align 1
@ab8500_val_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"irq-subscribe\00", align 1
@ab8500_subscribe_fops = common dso_local global i32 0, align 4
@ab8500_debug_ranges = common dso_local global i32 0, align 4
@debug_ranges = common dso_local global i32 0, align 4
@AB8500_NR_IRQS = common dso_local global i32 0, align 4
@num_interrupt_lines = common dso_local global i32 0, align 4
@ab8505_debug_ranges = common dso_local global i32 0, align 4
@AB8505_NR_IRQS = common dso_local global i32 0, align 4
@AB9540_NR_IRQS = common dso_local global i32 0, align 4
@ab8540_debug_ranges = common dso_local global i32 0, align 4
@AB8540_NR_IRQS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@ab8500_interrupts_fops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"irq-unsubscribe\00", align 1
@ab8500_unsubscribe_fops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"hwreg\00", align 1
@ab8500_hwreg_fops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"all-modem-registers\00", align 1
@ab8500_modem_fops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"bat_ctrl\00", align 1
@ab8500_gpadc_bat_ctrl_fops = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"btemp_ball\00", align 1
@ab8500_gpadc_btemp_ball_fops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"main_charger_v\00", align 1
@ab8500_gpadc_main_charger_v_fops = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"acc_detect1\00", align 1
@ab8500_gpadc_acc_detect1_fops = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"acc_detect2\00", align 1
@ab8500_gpadc_acc_detect2_fops = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"adc_aux1\00", align 1
@ab8500_gpadc_aux1_fops = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"adc_aux2\00", align 1
@ab8500_gpadc_aux2_fops = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"main_bat_v\00", align 1
@ab8500_gpadc_main_bat_v_fops = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"vbus_v\00", align 1
@ab8500_gpadc_vbus_v_fops = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"main_charger_c\00", align 1
@ab8500_gpadc_main_charger_c_fops = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"usb_charger_c\00", align 1
@ab8500_gpadc_usb_charger_c_fops = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"bk_bat_v\00", align 1
@ab8500_gpadc_bk_bat_v_fops = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"die_temp\00", align 1
@ab8500_gpadc_die_temp_fops = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"usb_id\00", align 1
@ab8500_gpadc_usb_id_fops = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"xtal_temp\00", align 1
@ab8540_gpadc_xtal_temp_fops = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"vbattruemeas\00", align 1
@ab8540_gpadc_vbat_true_meas_fops = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"batctrl_and_ibat\00", align 1
@S_IWUGO = common dso_local global i32 0, align 4
@ab8540_gpadc_bat_ctrl_and_ibat_fops = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [18 x i8] c"vbatmeas_and_ibat\00", align 1
@ab8540_gpadc_vbat_meas_and_ibat_fops = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [22 x i8] c"vbattruemeas_and_ibat\00", align 1
@ab8540_gpadc_vbat_true_meas_and_ibat_fops = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"battemp_and_ibat\00", align 1
@ab8540_gpadc_bat_temp_and_ibat_fops = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"otp_calib\00", align 1
@ab8540_gpadc_otp_calib_fops = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [11 x i8] c"avg_sample\00", align 1
@ab8500_gpadc_avg_sample_fops = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"trig_edge\00", align 1
@ab8500_gpadc_trig_edge_fops = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"trig_timer\00", align 1
@ab8500_gpadc_trig_timer_fops = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [10 x i8] c"conv_type\00", align 1
@ab8500_gpadc_conv_type_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_debug_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_debug_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ab8500*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @AB8500_MISC, align 4
  store i32 %8, i32* @debug_bank, align 4
  %9 = load i32, i32* @AB8500_REV_REG, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* @debug_address, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ab8500* @dev_get_drvdata(i32 %14)
  store %struct.ab8500* %15, %struct.ab8500** %6, align 8
  %16 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %17 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @num_irqs, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @num_irqs, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kcalloc(%struct.TYPE_4__* %20, i32 %21, i32 1, i32 %22)
  store i8* %23, i8** @irq_count, align 8
  %24 = load i8*, i8** @irq_count, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %419

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @num_irqs, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @devm_kcalloc(%struct.TYPE_4__* %31, i32 %32, i32 1, i32 %33)
  store i8* %34, i8** @dev_attr, align 8
  %35 = load i8*, i8** @dev_attr, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %419

40:                                               ; preds = %29
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @num_irqs, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @devm_kcalloc(%struct.TYPE_4__* %42, i32 %43, i32 1, i32 %44)
  store i8* %45, i8** @event_name, align 8
  %46 = load i8*, i8** @event_name, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %419

51:                                               ; preds = %40
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %52, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %53, %struct.resource** %7, align 8
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = icmp ne %struct.resource* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i64, i64* @irq_first, align 8
  %60 = call i32 @dev_err(%struct.TYPE_4__* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %419

63:                                               ; preds = %51
  %64 = load %struct.resource*, %struct.resource** %7, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* @irq_ab8500, align 4
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i64 @platform_get_irq_byname(%struct.platform_device* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i64 %68, i64* @irq_first, align 8
  %69 = load i64, i64* @irq_first, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i64, i64* @irq_first, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %419

74:                                               ; preds = %63
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i64 @platform_get_irq_byname(%struct.platform_device* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i64 %76, i64* @irq_last, align 8
  %77 = load i64, i64* @irq_last, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* @irq_last, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %419

82:                                               ; preds = %74
  %83 = load i32, i32* @AB8500_NAME_STRING, align 4
  %84 = call %struct.dentry* @debugfs_create_dir(i32 %83, %struct.dentry* null)
  store %struct.dentry* %84, %struct.dentry** %4, align 8
  %85 = load i32, i32* @AB8500_ADC_NAME_STRING, align 4
  %86 = load %struct.dentry*, %struct.dentry** %4, align 8
  %87 = call %struct.dentry* @debugfs_create_dir(i32 %85, %struct.dentry* %86)
  store %struct.dentry* %87, %struct.dentry** %5, align 8
  %88 = load i32, i32* @S_IRUGO, align 4
  %89 = load %struct.dentry*, %struct.dentry** %4, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %88, %struct.dentry* %89, %struct.TYPE_4__* %91, i32* @ab8500_bank_registers_fops)
  %93 = load i32, i32* @S_IRUGO, align 4
  %94 = load %struct.dentry*, %struct.dentry** %4, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %93, %struct.dentry* %94, %struct.TYPE_4__* %96, i32* @ab8500_all_banks_fops)
  %98 = load i32, i32* @S_IRUGO, align 4
  %99 = load i32, i32* @S_IWUSR, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @S_IWGRP, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.dentry*, %struct.dentry** %4, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %102, %struct.dentry* %103, %struct.TYPE_4__* %105, i32* @ab8500_bank_fops)
  %107 = load i32, i32* @S_IRUGO, align 4
  %108 = load i32, i32* @S_IWUSR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @S_IWGRP, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.dentry*, %struct.dentry** %4, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %111, %struct.dentry* %112, %struct.TYPE_4__* %114, i32* @ab8500_address_fops)
  %116 = load i32, i32* @S_IRUGO, align 4
  %117 = load i32, i32* @S_IWUSR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @S_IWGRP, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.dentry*, %struct.dentry** %4, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %120, %struct.dentry* %121, %struct.TYPE_4__* %123, i32* @ab8500_val_fops)
  %125 = load i32, i32* @S_IRUGO, align 4
  %126 = load i32, i32* @S_IWUSR, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @S_IWGRP, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.dentry*, %struct.dentry** %4, align 8
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %129, %struct.dentry* %130, %struct.TYPE_4__* %132, i32* @ab8500_subscribe_fops)
  %134 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %135 = call i64 @is_ab8500(%struct.ab8500* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %82
  %138 = load i32, i32* @ab8500_debug_ranges, align 4
  store i32 %138, i32* @debug_ranges, align 4
  %139 = load i32, i32* @AB8500_NR_IRQS, align 4
  store i32 %139, i32* @num_interrupt_lines, align 4
  br label %164

140:                                              ; preds = %82
  %141 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %142 = call i64 @is_ab8505(%struct.ab8500* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @ab8505_debug_ranges, align 4
  store i32 %145, i32* @debug_ranges, align 4
  %146 = load i32, i32* @AB8505_NR_IRQS, align 4
  store i32 %146, i32* @num_interrupt_lines, align 4
  br label %163

147:                                              ; preds = %140
  %148 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %149 = call i64 @is_ab9540(%struct.ab8500* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @ab8505_debug_ranges, align 4
  store i32 %152, i32* @debug_ranges, align 4
  %153 = load i32, i32* @AB9540_NR_IRQS, align 4
  store i32 %153, i32* @num_interrupt_lines, align 4
  br label %162

154:                                              ; preds = %147
  %155 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %156 = call i64 @is_ab8540(%struct.ab8500* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* @ab8540_debug_ranges, align 4
  store i32 %159, i32* @debug_ranges, align 4
  %160 = load i32, i32* @AB8540_NR_IRQS, align 4
  store i32 %160, i32* @num_interrupt_lines, align 4
  br label %161

161:                                              ; preds = %158, %154
  br label %162

162:                                              ; preds = %161, %151
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %137
  %165 = load i32, i32* @S_IRUGO, align 4
  %166 = load %struct.dentry*, %struct.dentry** %4, align 8
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %165, %struct.dentry* %166, %struct.TYPE_4__* %168, i32* @ab8500_interrupts_fops)
  %170 = load i32, i32* @S_IRUGO, align 4
  %171 = load i32, i32* @S_IWUSR, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @S_IWGRP, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.dentry*, %struct.dentry** %4, align 8
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %174, %struct.dentry* %175, %struct.TYPE_4__* %177, i32* @ab8500_unsubscribe_fops)
  %179 = load i32, i32* @S_IRUGO, align 4
  %180 = load i32, i32* @S_IWUSR, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @S_IWGRP, align 4
  %183 = or i32 %181, %182
  %184 = load %struct.dentry*, %struct.dentry** %4, align 8
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %183, %struct.dentry* %184, %struct.TYPE_4__* %186, i32* @ab8500_hwreg_fops)
  %188 = load i32, i32* @S_IRUGO, align 4
  %189 = load i32, i32* @S_IWUSR, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @S_IWGRP, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.dentry*, %struct.dentry** %4, align 8
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %192, %struct.dentry* %193, %struct.TYPE_4__* %195, i32* @ab8500_modem_fops)
  %197 = load i32, i32* @S_IRUGO, align 4
  %198 = load i32, i32* @S_IWUSR, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @S_IWGRP, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.dentry*, %struct.dentry** %5, align 8
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %201, %struct.dentry* %202, %struct.TYPE_4__* %204, i32* @ab8500_gpadc_bat_ctrl_fops)
  %206 = load i32, i32* @S_IRUGO, align 4
  %207 = load i32, i32* @S_IWUSR, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @S_IWGRP, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.dentry*, %struct.dentry** %5, align 8
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %210, %struct.dentry* %211, %struct.TYPE_4__* %213, i32* @ab8500_gpadc_btemp_ball_fops)
  %215 = load i32, i32* @S_IRUGO, align 4
  %216 = load i32, i32* @S_IWUSR, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @S_IWGRP, align 4
  %219 = or i32 %217, %218
  %220 = load %struct.dentry*, %struct.dentry** %5, align 8
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %219, %struct.dentry* %220, %struct.TYPE_4__* %222, i32* @ab8500_gpadc_main_charger_v_fops)
  %224 = load i32, i32* @S_IRUGO, align 4
  %225 = load i32, i32* @S_IWUSR, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @S_IWGRP, align 4
  %228 = or i32 %226, %227
  %229 = load %struct.dentry*, %struct.dentry** %5, align 8
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %228, %struct.dentry* %229, %struct.TYPE_4__* %231, i32* @ab8500_gpadc_acc_detect1_fops)
  %233 = load i32, i32* @S_IRUGO, align 4
  %234 = load i32, i32* @S_IWUSR, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @S_IWGRP, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.dentry*, %struct.dentry** %5, align 8
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %237, %struct.dentry* %238, %struct.TYPE_4__* %240, i32* @ab8500_gpadc_acc_detect2_fops)
  %242 = load i32, i32* @S_IRUGO, align 4
  %243 = load i32, i32* @S_IWUSR, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @S_IWGRP, align 4
  %246 = or i32 %244, %245
  %247 = load %struct.dentry*, %struct.dentry** %5, align 8
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %246, %struct.dentry* %247, %struct.TYPE_4__* %249, i32* @ab8500_gpadc_aux1_fops)
  %251 = load i32, i32* @S_IRUGO, align 4
  %252 = load i32, i32* @S_IWUSR, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @S_IWGRP, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.dentry*, %struct.dentry** %5, align 8
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %255, %struct.dentry* %256, %struct.TYPE_4__* %258, i32* @ab8500_gpadc_aux2_fops)
  %260 = load i32, i32* @S_IRUGO, align 4
  %261 = load i32, i32* @S_IWUSR, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @S_IWGRP, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.dentry*, %struct.dentry** %5, align 8
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %264, %struct.dentry* %265, %struct.TYPE_4__* %267, i32* @ab8500_gpadc_main_bat_v_fops)
  %269 = load i32, i32* @S_IRUGO, align 4
  %270 = load i32, i32* @S_IWUSR, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @S_IWGRP, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.dentry*, %struct.dentry** %5, align 8
  %275 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %276 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %275, i32 0, i32 0
  %277 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %273, %struct.dentry* %274, %struct.TYPE_4__* %276, i32* @ab8500_gpadc_vbus_v_fops)
  %278 = load i32, i32* @S_IRUGO, align 4
  %279 = load i32, i32* @S_IWUSR, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @S_IWGRP, align 4
  %282 = or i32 %280, %281
  %283 = load %struct.dentry*, %struct.dentry** %5, align 8
  %284 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %285 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %284, i32 0, i32 0
  %286 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %282, %struct.dentry* %283, %struct.TYPE_4__* %285, i32* @ab8500_gpadc_main_charger_c_fops)
  %287 = load i32, i32* @S_IRUGO, align 4
  %288 = load i32, i32* @S_IWUSR, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @S_IWGRP, align 4
  %291 = or i32 %289, %290
  %292 = load %struct.dentry*, %struct.dentry** %5, align 8
  %293 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %294 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %293, i32 0, i32 0
  %295 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %291, %struct.dentry* %292, %struct.TYPE_4__* %294, i32* @ab8500_gpadc_usb_charger_c_fops)
  %296 = load i32, i32* @S_IRUGO, align 4
  %297 = load i32, i32* @S_IWUSR, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @S_IWGRP, align 4
  %300 = or i32 %298, %299
  %301 = load %struct.dentry*, %struct.dentry** %5, align 8
  %302 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %303 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %302, i32 0, i32 0
  %304 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %300, %struct.dentry* %301, %struct.TYPE_4__* %303, i32* @ab8500_gpadc_bk_bat_v_fops)
  %305 = load i32, i32* @S_IRUGO, align 4
  %306 = load i32, i32* @S_IWUSR, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @S_IWGRP, align 4
  %309 = or i32 %307, %308
  %310 = load %struct.dentry*, %struct.dentry** %5, align 8
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %311, i32 0, i32 0
  %313 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %309, %struct.dentry* %310, %struct.TYPE_4__* %312, i32* @ab8500_gpadc_die_temp_fops)
  %314 = load i32, i32* @S_IRUGO, align 4
  %315 = load i32, i32* @S_IWUSR, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @S_IWGRP, align 4
  %318 = or i32 %316, %317
  %319 = load %struct.dentry*, %struct.dentry** %5, align 8
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %320, i32 0, i32 0
  %322 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %318, %struct.dentry* %319, %struct.TYPE_4__* %321, i32* @ab8500_gpadc_usb_id_fops)
  %323 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %324 = call i64 @is_ab8540(%struct.ab8500* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %382

326:                                              ; preds = %164
  %327 = load i32, i32* @S_IRUGO, align 4
  %328 = load i32, i32* @S_IWUSR, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @S_IWGRP, align 4
  %331 = or i32 %329, %330
  %332 = load %struct.dentry*, %struct.dentry** %5, align 8
  %333 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %334 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %333, i32 0, i32 0
  %335 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 %331, %struct.dentry* %332, %struct.TYPE_4__* %334, i32* @ab8540_gpadc_xtal_temp_fops)
  %336 = load i32, i32* @S_IRUGO, align 4
  %337 = load i32, i32* @S_IWUSR, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @S_IWGRP, align 4
  %340 = or i32 %338, %339
  %341 = load %struct.dentry*, %struct.dentry** %5, align 8
  %342 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %343 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %342, i32 0, i32 0
  %344 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %340, %struct.dentry* %341, %struct.TYPE_4__* %343, i32* @ab8540_gpadc_vbat_true_meas_fops)
  %345 = load i32, i32* @S_IRUGO, align 4
  %346 = load i32, i32* @S_IWUGO, align 4
  %347 = or i32 %345, %346
  %348 = load %struct.dentry*, %struct.dentry** %5, align 8
  %349 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %350 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %349, i32 0, i32 0
  %351 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %347, %struct.dentry* %348, %struct.TYPE_4__* %350, i32* @ab8540_gpadc_bat_ctrl_and_ibat_fops)
  %352 = load i32, i32* @S_IRUGO, align 4
  %353 = load i32, i32* @S_IWUGO, align 4
  %354 = or i32 %352, %353
  %355 = load %struct.dentry*, %struct.dentry** %5, align 8
  %356 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %357 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %356, i32 0, i32 0
  %358 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i32 %354, %struct.dentry* %355, %struct.TYPE_4__* %357, i32* @ab8540_gpadc_vbat_meas_and_ibat_fops)
  %359 = load i32, i32* @S_IRUGO, align 4
  %360 = load i32, i32* @S_IWUGO, align 4
  %361 = or i32 %359, %360
  %362 = load %struct.dentry*, %struct.dentry** %5, align 8
  %363 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %364 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %363, i32 0, i32 0
  %365 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %361, %struct.dentry* %362, %struct.TYPE_4__* %364, i32* @ab8540_gpadc_vbat_true_meas_and_ibat_fops)
  %366 = load i32, i32* @S_IRUGO, align 4
  %367 = load i32, i32* @S_IWUGO, align 4
  %368 = or i32 %366, %367
  %369 = load %struct.dentry*, %struct.dentry** %5, align 8
  %370 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %371 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %370, i32 0, i32 0
  %372 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 %368, %struct.dentry* %369, %struct.TYPE_4__* %371, i32* @ab8540_gpadc_bat_temp_and_ibat_fops)
  %373 = load i32, i32* @S_IRUGO, align 4
  %374 = load i32, i32* @S_IWUSR, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @S_IWGRP, align 4
  %377 = or i32 %375, %376
  %378 = load %struct.dentry*, %struct.dentry** %5, align 8
  %379 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %380 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %379, i32 0, i32 0
  %381 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i32 %377, %struct.dentry* %378, %struct.TYPE_4__* %380, i32* @ab8540_gpadc_otp_calib_fops)
  br label %382

382:                                              ; preds = %326, %164
  %383 = load i32, i32* @S_IRUGO, align 4
  %384 = load i32, i32* @S_IWUSR, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @S_IWGRP, align 4
  %387 = or i32 %385, %386
  %388 = load %struct.dentry*, %struct.dentry** %5, align 8
  %389 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %390 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %389, i32 0, i32 0
  %391 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i32 %387, %struct.dentry* %388, %struct.TYPE_4__* %390, i32* @ab8500_gpadc_avg_sample_fops)
  %392 = load i32, i32* @S_IRUGO, align 4
  %393 = load i32, i32* @S_IWUSR, align 4
  %394 = or i32 %392, %393
  %395 = load i32, i32* @S_IWGRP, align 4
  %396 = or i32 %394, %395
  %397 = load %struct.dentry*, %struct.dentry** %5, align 8
  %398 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %399 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %398, i32 0, i32 0
  %400 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i32 %396, %struct.dentry* %397, %struct.TYPE_4__* %399, i32* @ab8500_gpadc_trig_edge_fops)
  %401 = load i32, i32* @S_IRUGO, align 4
  %402 = load i32, i32* @S_IWUSR, align 4
  %403 = or i32 %401, %402
  %404 = load i32, i32* @S_IWGRP, align 4
  %405 = or i32 %403, %404
  %406 = load %struct.dentry*, %struct.dentry** %5, align 8
  %407 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %408 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %407, i32 0, i32 0
  %409 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 %405, %struct.dentry* %406, %struct.TYPE_4__* %408, i32* @ab8500_gpadc_trig_timer_fops)
  %410 = load i32, i32* @S_IRUGO, align 4
  %411 = load i32, i32* @S_IWUSR, align 4
  %412 = or i32 %410, %411
  %413 = load i32, i32* @S_IWGRP, align 4
  %414 = or i32 %412, %413
  %415 = load %struct.dentry*, %struct.dentry** %5, align 8
  %416 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %417 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %416, i32 0, i32 0
  %418 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32 %414, %struct.dentry* %415, %struct.TYPE_4__* %417, i32* @ab8500_gpadc_conv_type_fops)
  store i32 0, i32* %2, align 4
  br label %419

419:                                              ; preds = %382, %79, %71, %56, %48, %37, %26
  %420 = load i32, i32* %2, align 4
  ret i32 %420
}

declare dso_local %struct.ab8500* @dev_get_drvdata(i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @is_ab8500(%struct.ab8500*) #1

declare dso_local i64 @is_ab8505(%struct.ab8500*) #1

declare dso_local i64 @is_ab9540(%struct.ab8500*) #1

declare dso_local i64 @is_ab8540(%struct.ab8500*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
