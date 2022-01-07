; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device_id = type { i32 }
%struct.ab8500 = type { i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@ab8500_probe.switch_off_status = internal constant [8 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [22 x i8] c"Swoff bit programming\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Thermal protection activation\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Vbat lower then BattOk falling threshold\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Watchdog expired\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Non presence of 32kHz clock\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Battery level lower than power on reset threshold\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Power on key 1 pressed longer than 10 seconds\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"DB8500 thermal shutdown\00", align 1
@ab8500_probe.turn_on_status = internal constant [8 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [22 x i8] c"Battery rising (Vbat)\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Power On Key 1 dbF\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Power On Key 2 dbF\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"RTC Alarm\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Main Charger Detect\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Vbus Detect (USB)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"USB ID Detect\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"UART Factory Mode Detect\00", align 1
@AB8500_VERSION_UNDEFINED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"no IRQ resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ab8500_prcmu_read = common dso_local global i32 0, align 4
@ab8500_prcmu_write = common dso_local global i32 0, align 4
@ab8500_prcmu_write_masked = common dso_local global i32 0, align 4
@AB8500_MISC = common dso_local global i32 0, align 4
@AB8500_IC_NAME_REG = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"could not probe HW\0A\00", align 1
@AB8500_REV_REG = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [32 x i8] c"detected chip, %s rev. %1x.%1x\0A\00", align 1
@ab8500_version_str = common dso_local global i32* null, align 8
@AB8540_NUM_IRQ_REGS = common dso_local global i32 0, align 4
@ab8540_irq_regoffset = common dso_local global i32* null, align 8
@AB8540_IT_LATCHHIER_NUM = common dso_local global i8* null, align 8
@AB9540_NUM_IRQ_REGS = common dso_local global i32 0, align 4
@ab9540_irq_regoffset = common dso_local global i32* null, align 8
@AB8500_IT_LATCHHIER_NUM = common dso_local global i8* null, align 8
@AB8500_NUM_IRQ_REGS = common dso_local global i32 0, align 4
@ab8500_irq_regoffset = common dso_local global i32* null, align 8
@AB8500_RTC = common dso_local global i32 0, align 4
@AB8500_SWITCH_OFF_STATUS = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"switch off cause(s) (%#x): \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" None\0A\00", align 1
@AB8500_SYS_CTRL1_BLOCK = common dso_local global i32 0, align 4
@AB8500_TURN_ON_STATUS = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [26 x i8] c"turn on reason(s) (%#x): \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"\22%s\22 \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"None\0A\00", align 1
@AB8500_CHARGER = common dso_local global i32 0, align 4
@AB8500_CH_USBCH_STAT1_REG = common dso_local global i64 0, align 8
@VBUS_DET_DBNC1 = common dso_local global i32 0, align 4
@VBUS_DET_DBNC100 = common dso_local global i32 0, align 4
@AB8500_POW_KEY_1_ON = common dso_local global i32 0, align 4
@AB8500_VBUS_DET = common dso_local global i32 0, align 4
@AB8500_INTERRUPT = common dso_local global i32 0, align 4
@AB8500_IT_LATCH1_REG = common dso_local global i64 0, align 8
@AB8500_IT_MASK1_REG = common dso_local global i64 0, align 8
@ab8500_ops = common dso_local global i32 0, align 4
@ab8500_hierarchical_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"ab8500\00", align 1
@ab9540_devs = common dso_local global i8** null, align 8
@ab8540_devs = common dso_local global i8** null, align 8
@ab8540_cut1_devs = common dso_local global i8** null, align 8
@ab8540_cut2_devs = common dso_local global i8** null, align 8
@ab8505_devs = common dso_local global i8** null, align 8
@ab8500_devs = common dso_local global i8** null, align 8
@no_bm = common dso_local global i32 0, align 4
@ab8500_bm_devs = common dso_local global i8** null, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"error adding bm devices\0A\00", align 1
@AB8500_CUT2P0 = common dso_local global i32 0, align 4
@ab9540_attr_group = common dso_local global i32 0, align 4
@ab8500_attr_group = common dso_local global i32 0, align 4
@ab8505_attr_group = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [30 x i8] c"error creating sysfs entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.ab8500*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %12)
  store %struct.platform_device_id* %13, %struct.platform_device_id** %4, align 8
  %14 = load i32, i32* @AB8500_VERSION_UNDEFINED, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.TYPE_7__* %20, i32 88, i32 %21)
  %23 = bitcast i8* %22 to %struct.ab8500*
  store %struct.ab8500* %23, %struct.ab8500** %7, align 8
  %24 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %25 = icmp ne %struct.ab8500* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %618

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %33 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %32, i32 0, i32 6
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_IRQ, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %8, align 8
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  %38 = icmp ne %struct.resource* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %618

45:                                               ; preds = %29
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %50 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ab8500_prcmu_read, align 4
  %52 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %53 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %52, i32 0, i32 15
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ab8500_prcmu_write, align 4
  %55 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %56 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %55, i32 0, i32 14
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ab8500_prcmu_write_masked, align 4
  %58 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %59 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %61 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %60, i32 0, i32 12
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %64 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %63, i32 0, i32 11
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %67 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %66, i32 0, i32 10
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.ab8500* %70)
  %72 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %73 = icmp ne %struct.platform_device_id* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %45
  %75 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %76 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %45
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @AB8500_VERSION_UNDEFINED, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %85 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %102

86:                                               ; preds = %78
  %87 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %88 = load i32, i32* @AB8500_MISC, align 4
  %89 = load i64, i64* @AB8500_IC_NAME_REG, align 8
  %90 = call i32 @get_register_interruptible(%struct.ab8500* %87, i32 %88, i64 %89, i32* %11)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_err(%struct.TYPE_7__* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %2, align 4
  br label %618

98:                                               ; preds = %86
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %101 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %82
  %103 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %104 = load i32, i32* @AB8500_MISC, align 4
  %105 = load i64, i64* @AB8500_REV_REG, align 8
  %106 = call i32 @get_register_interruptible(%struct.ab8500* %103, i32 %104, i64 %105, i32* %11)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %618

111:                                              ; preds = %102
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %114 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %116 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %115, i32 0, i32 6
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32*, i32** @ab8500_version_str, align 8
  %119 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %120 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %126 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 4
  %129 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %130 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 15
  %133 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %124, i32 %128, i32 %132)
  %134 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %135 = call i64 @is_ab8540(%struct.ab8500* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %111
  %138 = load i32, i32* @AB8540_NUM_IRQ_REGS, align 4
  %139 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %140 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i32*, i32** @ab8540_irq_regoffset, align 8
  %142 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %143 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %142, i32 0, i32 3
  store i32* %141, i32** %143, align 8
  %144 = load i8*, i8** @AB8540_IT_LATCHHIER_NUM, align 8
  %145 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %146 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %145, i32 0, i32 9
  store i8* %144, i8** %146, align 8
  br label %176

147:                                              ; preds = %111
  %148 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %149 = call i64 @is_ab9540(%struct.ab8500* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %153 = call i64 @is_ab8505(%struct.ab8500* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %151, %147
  %156 = load i32, i32* @AB9540_NUM_IRQ_REGS, align 4
  %157 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %158 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i32*, i32** @ab9540_irq_regoffset, align 8
  %160 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %161 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %160, i32 0, i32 3
  store i32* %159, i32** %161, align 8
  %162 = load i8*, i8** @AB8500_IT_LATCHHIER_NUM, align 8
  %163 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %164 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %163, i32 0, i32 9
  store i8* %162, i8** %164, align 8
  br label %175

165:                                              ; preds = %151
  %166 = load i32, i32* @AB8500_NUM_IRQ_REGS, align 4
  %167 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %168 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load i32*, i32** @ab8500_irq_regoffset, align 8
  %170 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %171 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %170, i32 0, i32 3
  store i32* %169, i32** %171, align 8
  %172 = load i8*, i8** @AB8500_IT_LATCHHIER_NUM, align 8
  %173 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %174 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %173, i32 0, i32 9
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %165, %155
  br label %176

176:                                              ; preds = %175, %137
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %180 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = call i8* @devm_kzalloc(%struct.TYPE_7__* %178, i32 %181, i32 %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %186 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %185, i32 0, i32 4
  store i32* %184, i32** %186, align 8
  %187 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %188 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %176
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %618

194:                                              ; preds = %176
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %198 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @GFP_KERNEL, align 4
  %201 = call i8* @devm_kzalloc(%struct.TYPE_7__* %196, i32 %199, i32 %200)
  %202 = bitcast i8* %201 to i32*
  %203 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %204 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %203, i32 0, i32 5
  store i32* %202, i32** %204, align 8
  %205 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %206 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %194
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %2, align 4
  br label %618

212:                                              ; preds = %194
  %213 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %214 = load i32, i32* @AB8500_RTC, align 4
  %215 = load i64, i64* @AB8500_SWITCH_OFF_STATUS, align 8
  %216 = call i32 @get_register_interruptible(%struct.ab8500* %213, i32 %214, i64 %215, i32* %11)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %618

221:                                              ; preds = %212
  %222 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %223 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %222, i32 0, i32 6
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %252

229:                                              ; preds = %221
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %247, %229
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @ab8500_probe.switch_off_status, i64 0, i64 0))
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %250

234:                                              ; preds = %230
  %235 = load i32, i32* %11, align 4
  %236 = and i32 %235, 1
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ab8500_probe.switch_off_status, i64 0, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %242)
  br label %244

244:                                              ; preds = %238, %234
  %245 = load i32, i32* %11, align 4
  %246 = ashr i32 %245, 1
  store i32 %246, i32* %11, align 4
  br label %247

247:                                              ; preds = %244
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %230

250:                                              ; preds = %230
  %251 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %254

252:                                              ; preds = %221
  %253 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %250
  %255 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %256 = load i32, i32* @AB8500_SYS_CTRL1_BLOCK, align 4
  %257 = load i64, i64* @AB8500_TURN_ON_STATUS, align 8
  %258 = call i32 @get_register_interruptible(%struct.ab8500* %255, i32 %256, i64 %257, i32* %11)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = load i32, i32* %9, align 4
  store i32 %262, i32* %2, align 4
  br label %618

263:                                              ; preds = %254
  %264 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %265 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %264, i32 0, i32 6
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = load i32, i32* %11, align 4
  %268 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %266, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %11, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %294

271:                                              ; preds = %263
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %289, %271
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @ab8500_probe.turn_on_status, i64 0, i64 0))
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %292

276:                                              ; preds = %272
  %277 = load i32, i32* %11, align 4
  %278 = and i32 %277, 1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ab8500_probe.turn_on_status, i64 0, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* %284)
  br label %286

286:                                              ; preds = %280, %276
  %287 = load i32, i32* %11, align 4
  %288 = ashr i32 %287, 1
  store i32 %288, i32* %11, align 4
  br label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %10, align 4
  br label %272

292:                                              ; preds = %272
  %293 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %296

294:                                              ; preds = %263
  %295 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %292
  %297 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %298 = call i64 @is_ab9540(%struct.ab8500* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %325

300:                                              ; preds = %296
  %301 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %302 = load i32, i32* @AB8500_CHARGER, align 4
  %303 = load i64, i64* @AB8500_CH_USBCH_STAT1_REG, align 8
  %304 = call i32 @get_register_interruptible(%struct.ab8500* %301, i32 %302, i64 %303, i32* %11)
  store i32 %304, i32* %9, align 4
  %305 = load i32, i32* %9, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %300
  %308 = load i32, i32* %9, align 4
  store i32 %308, i32* %2, align 4
  br label %618

309:                                              ; preds = %300
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* @VBUS_DET_DBNC1, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %309
  %315 = load i32, i32* %11, align 4
  %316 = load i32, i32* @VBUS_DET_DBNC100, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = load i32, i32* @AB8500_POW_KEY_1_ON, align 4
  %321 = xor i32 %320, -1
  %322 = load i32, i32* @AB8500_VBUS_DET, align 4
  %323 = call i32 @ab8500_override_turn_on_stat(i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %319, %314, %309
  br label %325

325:                                              ; preds = %324, %296
  store i32 0, i32* %10, align 4
  br label %326

326:                                              ; preds = %383, %325
  %327 = load i32, i32* %10, align 4
  %328 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %329 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %386

332:                                              ; preds = %326
  %333 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %334 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %333, i32 0, i32 3
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %10, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 11
  br i1 %340, label %341, label %346

341:                                              ; preds = %332
  %342 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %343 = call i64 @is_ab8500_1p1_or_earlier(%struct.ab8500* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %341
  br label %383

346:                                              ; preds = %341, %332
  %347 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %348 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %347, i32 0, i32 3
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %10, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %346
  br label %383

356:                                              ; preds = %346
  %357 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %358 = load i32, i32* @AB8500_INTERRUPT, align 4
  %359 = load i64, i64* @AB8500_IT_LATCH1_REG, align 8
  %360 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %361 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %360, i32 0, i32 3
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %359, %367
  %369 = call i32 @get_register_interruptible(%struct.ab8500* %357, i32 %358, i64 %368, i32* %11)
  %370 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %371 = load i32, i32* @AB8500_INTERRUPT, align 4
  %372 = load i64, i64* @AB8500_IT_MASK1_REG, align 8
  %373 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %374 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %373, i32 0, i32 3
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %10, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %372, %380
  %382 = call i32 @set_register_interruptible(%struct.ab8500* %370, i32 %371, i64 %381, i32 255)
  br label %383

383:                                              ; preds = %356, %355, %345
  %384 = load i32, i32* %10, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %10, align 4
  br label %326

386:                                              ; preds = %326
  %387 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %388 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %387, i32 0, i32 6
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %388, align 8
  %390 = call i32 @abx500_register_ops(%struct.TYPE_7__* %389, i32* @ab8500_ops)
  store i32 %390, i32* %9, align 4
  %391 = load i32, i32* %9, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %386
  %394 = load i32, i32* %9, align 4
  store i32 %394, i32* %2, align 4
  br label %618

395:                                              ; preds = %386
  store i32 0, i32* %10, align 4
  br label %396

396:                                              ; preds = %415, %395
  %397 = load i32, i32* %10, align 4
  %398 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %399 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = icmp slt i32 %397, %400
  br i1 %401, label %402, label %418

402:                                              ; preds = %396
  %403 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %404 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %403, i32 0, i32 5
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %10, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 255, i32* %408, align 4
  %409 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %410 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %409, i32 0, i32 4
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %10, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  store i32 255, i32* %414, align 4
  br label %415

415:                                              ; preds = %402
  %416 = load i32, i32* %10, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %10, align 4
  br label %396

418:                                              ; preds = %396
  %419 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %420 = load %struct.device_node*, %struct.device_node** %6, align 8
  %421 = call i32 @ab8500_irq_init(%struct.ab8500* %419, %struct.device_node* %420)
  store i32 %421, i32* %9, align 4
  %422 = load i32, i32* %9, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %418
  %425 = load i32, i32* %9, align 4
  store i32 %425, i32* %2, align 4
  br label %618

426:                                              ; preds = %418
  %427 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %428 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %427, i32 0, i32 0
  %429 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %430 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %429, i32 0, i32 8
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @ab8500_hierarchical_irq, align 4
  %433 = load i32, i32* @IRQF_ONESHOT, align 4
  %434 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %435 = or i32 %433, %434
  %436 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %437 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %428, i32 %431, i32* null, i32 %432, i32 %435, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), %struct.ab8500* %436)
  store i32 %437, i32* %9, align 4
  %438 = load i32, i32* %9, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %426
  %441 = load i32, i32* %9, align 4
  store i32 %441, i32* %2, align 4
  br label %618

442:                                              ; preds = %426
  %443 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %444 = call i64 @is_ab9540(%struct.ab8500* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %457

446:                                              ; preds = %442
  %447 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %448 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %447, i32 0, i32 6
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %448, align 8
  %450 = load i8**, i8*** @ab9540_devs, align 8
  %451 = load i8**, i8*** @ab9540_devs, align 8
  %452 = call i32 @ARRAY_SIZE(i8** %451)
  %453 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %454 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @mfd_add_devices(%struct.TYPE_7__* %449, i32 0, i8** %450, i32 %452, i32* null, i32 0, i32 %455)
  store i32 %456, i32* %9, align 4
  br label %531

457:                                              ; preds = %442
  %458 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %459 = call i64 @is_ab8540(%struct.ab8500* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %503

461:                                              ; preds = %457
  %462 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %463 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %462, i32 0, i32 6
  %464 = load %struct.TYPE_7__*, %struct.TYPE_7__** %463, align 8
  %465 = load i8**, i8*** @ab8540_devs, align 8
  %466 = load i8**, i8*** @ab8540_devs, align 8
  %467 = call i32 @ARRAY_SIZE(i8** %466)
  %468 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %469 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @mfd_add_devices(%struct.TYPE_7__* %464, i32 0, i8** %465, i32 %467, i32* null, i32 0, i32 %470)
  store i32 %471, i32* %9, align 4
  %472 = load i32, i32* %9, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %461
  %475 = load i32, i32* %9, align 4
  store i32 %475, i32* %2, align 4
  br label %618

476:                                              ; preds = %461
  %477 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %478 = call i64 @is_ab8540_1p2_or_earlier(%struct.ab8500* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %491

480:                                              ; preds = %476
  %481 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %482 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %481, i32 0, i32 6
  %483 = load %struct.TYPE_7__*, %struct.TYPE_7__** %482, align 8
  %484 = load i8**, i8*** @ab8540_cut1_devs, align 8
  %485 = load i8**, i8*** @ab8540_cut1_devs, align 8
  %486 = call i32 @ARRAY_SIZE(i8** %485)
  %487 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %488 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %487, i32 0, i32 7
  %489 = load i32, i32* %488, align 8
  %490 = call i32 @mfd_add_devices(%struct.TYPE_7__* %483, i32 0, i8** %484, i32 %486, i32* null, i32 0, i32 %489)
  store i32 %490, i32* %9, align 4
  br label %502

491:                                              ; preds = %476
  %492 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %493 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %492, i32 0, i32 6
  %494 = load %struct.TYPE_7__*, %struct.TYPE_7__** %493, align 8
  %495 = load i8**, i8*** @ab8540_cut2_devs, align 8
  %496 = load i8**, i8*** @ab8540_cut2_devs, align 8
  %497 = call i32 @ARRAY_SIZE(i8** %496)
  %498 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %499 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %498, i32 0, i32 7
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @mfd_add_devices(%struct.TYPE_7__* %494, i32 0, i8** %495, i32 %497, i32* null, i32 0, i32 %500)
  store i32 %501, i32* %9, align 4
  br label %502

502:                                              ; preds = %491, %480
  br label %530

503:                                              ; preds = %457
  %504 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %505 = call i64 @is_ab8505(%struct.ab8500* %504)
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %518

507:                                              ; preds = %503
  %508 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %509 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %508, i32 0, i32 6
  %510 = load %struct.TYPE_7__*, %struct.TYPE_7__** %509, align 8
  %511 = load i8**, i8*** @ab8505_devs, align 8
  %512 = load i8**, i8*** @ab8505_devs, align 8
  %513 = call i32 @ARRAY_SIZE(i8** %512)
  %514 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %515 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %514, i32 0, i32 7
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @mfd_add_devices(%struct.TYPE_7__* %510, i32 0, i8** %511, i32 %513, i32* null, i32 0, i32 %516)
  store i32 %517, i32* %9, align 4
  br label %529

518:                                              ; preds = %503
  %519 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %520 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %519, i32 0, i32 6
  %521 = load %struct.TYPE_7__*, %struct.TYPE_7__** %520, align 8
  %522 = load i8**, i8*** @ab8500_devs, align 8
  %523 = load i8**, i8*** @ab8500_devs, align 8
  %524 = call i32 @ARRAY_SIZE(i8** %523)
  %525 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %526 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %525, i32 0, i32 7
  %527 = load i32, i32* %526, align 8
  %528 = call i32 @mfd_add_devices(%struct.TYPE_7__* %521, i32 0, i8** %522, i32 %524, i32* null, i32 0, i32 %527)
  store i32 %528, i32* %9, align 4
  br label %529

529:                                              ; preds = %518, %507
  br label %530

530:                                              ; preds = %529, %502
  br label %531

531:                                              ; preds = %530, %446
  %532 = load i32, i32* %9, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  %535 = load i32, i32* %9, align 4
  store i32 %535, i32* %2, align 4
  br label %618

536:                                              ; preds = %531
  %537 = load i32, i32* @no_bm, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %558, label %539

539:                                              ; preds = %536
  %540 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %541 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %540, i32 0, i32 6
  %542 = load %struct.TYPE_7__*, %struct.TYPE_7__** %541, align 8
  %543 = load i8**, i8*** @ab8500_bm_devs, align 8
  %544 = load i8**, i8*** @ab8500_bm_devs, align 8
  %545 = call i32 @ARRAY_SIZE(i8** %544)
  %546 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %547 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %546, i32 0, i32 7
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @mfd_add_devices(%struct.TYPE_7__* %542, i32 0, i8** %543, i32 %545, i32* null, i32 0, i32 %548)
  store i32 %549, i32* %9, align 4
  %550 = load i32, i32* %9, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %557

552:                                              ; preds = %539
  %553 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %554 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %553, i32 0, i32 6
  %555 = load %struct.TYPE_7__*, %struct.TYPE_7__** %554, align 8
  %556 = call i32 @dev_err(%struct.TYPE_7__* %555, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  br label %557

557:                                              ; preds = %552, %539
  br label %558

558:                                              ; preds = %557, %536
  %559 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %560 = call i64 @is_ab8505(%struct.ab8500* %559)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %566, label %562

562:                                              ; preds = %558
  %563 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %564 = call i64 @is_ab9540(%struct.ab8500* %563)
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %572

566:                                              ; preds = %562, %558
  %567 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %568 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* @AB8500_CUT2P0, align 4
  %571 = icmp sge i32 %569, %570
  br i1 %571, label %576, label %572

572:                                              ; preds = %566, %562
  %573 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %574 = call i64 @is_ab8540(%struct.ab8500* %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %582

576:                                              ; preds = %572, %566
  %577 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %578 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %577, i32 0, i32 6
  %579 = load %struct.TYPE_7__*, %struct.TYPE_7__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %579, i32 0, i32 0
  %581 = call i32 @sysfs_create_group(i32* %580, i32* @ab9540_attr_group)
  store i32 %581, i32* %9, align 4
  br label %588

582:                                              ; preds = %572
  %583 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %584 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %583, i32 0, i32 6
  %585 = load %struct.TYPE_7__*, %struct.TYPE_7__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %585, i32 0, i32 0
  %587 = call i32 @sysfs_create_group(i32* %586, i32* @ab8500_attr_group)
  store i32 %587, i32* %9, align 4
  br label %588

588:                                              ; preds = %582, %576
  %589 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %590 = call i64 @is_ab8505(%struct.ab8500* %589)
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %596, label %592

592:                                              ; preds = %588
  %593 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %594 = call i64 @is_ab9540(%struct.ab8500* %593)
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %608

596:                                              ; preds = %592, %588
  %597 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %598 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* @AB8500_CUT2P0, align 4
  %601 = icmp sge i32 %599, %600
  br i1 %601, label %602, label %608

602:                                              ; preds = %596
  %603 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %604 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %603, i32 0, i32 6
  %605 = load %struct.TYPE_7__*, %struct.TYPE_7__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %605, i32 0, i32 0
  %607 = call i32 @sysfs_create_group(i32* %606, i32* @ab8505_attr_group)
  store i32 %607, i32* %9, align 4
  br label %608

608:                                              ; preds = %602, %596, %592
  %609 = load i32, i32* %9, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %616

611:                                              ; preds = %608
  %612 = load %struct.ab8500*, %struct.ab8500** %7, align 8
  %613 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %612, i32 0, i32 6
  %614 = load %struct.TYPE_7__*, %struct.TYPE_7__** %613, align 8
  %615 = call i32 @dev_err(%struct.TYPE_7__* %614, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  br label %616

616:                                              ; preds = %611, %608
  %617 = load i32, i32* %9, align 4
  store i32 %617, i32* %2, align 4
  br label %618

618:                                              ; preds = %616, %534, %474, %440, %424, %393, %307, %261, %219, %209, %191, %109, %93, %39, %26
  %619 = load i32, i32* %2, align 4
  ret i32 %619
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ab8500*) #1

declare dso_local i32 @get_register_interruptible(%struct.ab8500*, i32, i64, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i64 @is_ab8540(%struct.ab8500*) #1

declare dso_local i64 @is_ab9540(%struct.ab8500*) #1

declare dso_local i64 @is_ab8505(%struct.ab8500*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @ab8500_override_turn_on_stat(i32, i32) #1

declare dso_local i64 @is_ab8500_1p1_or_earlier(%struct.ab8500*) #1

declare dso_local i32 @set_register_interruptible(%struct.ab8500*, i32, i64, i32) #1

declare dso_local i32 @abx500_register_ops(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ab8500_irq_init(%struct.ab8500*, %struct.device_node*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32, i32, i8*, %struct.ab8500*) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_7__*, i32, i8**, i32, i32*, i32, i32) #1

declare dso_local i64 @is_ab8540_1p2_or_earlier(%struct.ab8500*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
