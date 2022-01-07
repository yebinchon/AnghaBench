; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_bxtwc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_bxtwc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intel_soc_pmic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get PMIC hardware revision\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BROXTON_PMIC_WC_HRV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid PMIC hardware revision: %llu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bxtwc_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to initialise regmap: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@bxtwc_regmap_irq_chip = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to add IRQ chip\0A\00", align 1
@BXTWC_PWRBTN_LVL1_IRQ = common dso_local global i32 0, align 4
@bxtwc_regmap_irq_chip_pwrbtn = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to add PWRBTN IRQ chip\0A\00", align 1
@BXTWC_TMU_LVL1_IRQ = common dso_local global i32 0, align 4
@bxtwc_regmap_irq_chip_tmu = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to add TMU IRQ chip\0A\00", align 1
@BXTWC_BCU_LVL1_IRQ = common dso_local global i32 0, align 4
@bxtwc_regmap_irq_chip_bcu = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to add BUC IRQ chip\0A\00", align 1
@BXTWC_ADC_LVL1_IRQ = common dso_local global i32 0, align 4
@bxtwc_regmap_irq_chip_adc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to add ADC IRQ chip\0A\00", align 1
@BXTWC_CHGR_LVL1_IRQ = common dso_local global i32 0, align 4
@bxtwc_regmap_irq_chip_chgr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to add CHGR IRQ chip\0A\00", align 1
@BXTWC_CRIT_LVL1_IRQ = common dso_local global i32 0, align 4
@bxtwc_regmap_irq_chip_crit = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to add CRIT IRQ chip\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@bxt_wc_dev = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to add devices\0A\00", align 1
@bxtwc_group = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Failed to create sysfs group %d\0A\00", align 1
@BXTWC_MIRQLVL1 = common dso_local global i32 0, align 4
@BXTWC_MIRQLVL1_MCHGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bxtwc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxtwc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_soc_pmic*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @ACPI_HANDLE(%struct.TYPE_8__* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @acpi_evaluate_integer(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %243

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @BROXTON_PMIC_WC_HRV, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %243

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.intel_soc_pmic* @devm_kzalloc(%struct.TYPE_8__* %36, i32 48, i32 %37)
  store %struct.intel_soc_pmic* %38, %struct.intel_soc_pmic** %8, align 8
  %39 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %40 = icmp ne %struct.intel_soc_pmic* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %243

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i32 @platform_get_irq(%struct.platform_device* %45, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %243

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %54 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %58 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %56, %struct.intel_soc_pmic* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %62 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %61, i32 0, i32 9
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %66 = call i32 @devm_regmap_init(%struct.TYPE_8__* %64, i32* null, %struct.intel_soc_pmic* %65, i32* @bxtwc_regmap_config)
  %67 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %68 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %70 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %51
  %75 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %76 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %243

84:                                               ; preds = %51
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %88 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %91 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = load i32, i32* @IRQF_SHARED, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %97 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %96, i32 0, i32 3
  %98 = call i32 @devm_regmap_add_irq_chip(%struct.TYPE_8__* %86, i32 %89, i32 %92, i32 %95, i32 0, i32* @bxtwc_regmap_irq_chip, i32* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %84
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %243

106:                                              ; preds = %84
  %107 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %108 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %109 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @BXTWC_PWRBTN_LVL1_IRQ, align 4
  %112 = load i32, i32* @IRQF_ONESHOT, align 4
  %113 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %114 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %113, i32 0, i32 8
  %115 = call i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic* %107, i32 %110, i32 %111, i32 %112, i32* @bxtwc_regmap_irq_chip_pwrbtn, i32* %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %243

123:                                              ; preds = %106
  %124 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %125 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %126 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @BXTWC_TMU_LVL1_IRQ, align 4
  %129 = load i32, i32* @IRQF_ONESHOT, align 4
  %130 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %131 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %130, i32 0, i32 7
  %132 = call i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic* %124, i32 %127, i32 %128, i32 %129, i32* @bxtwc_regmap_irq_chip_tmu, i32* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %123
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %243

140:                                              ; preds = %123
  %141 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %142 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %143 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BXTWC_BCU_LVL1_IRQ, align 4
  %146 = load i32, i32* @IRQF_ONESHOT, align 4
  %147 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %148 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %147, i32 0, i32 6
  %149 = call i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic* %141, i32 %144, i32 %145, i32 %146, i32* @bxtwc_regmap_irq_chip_bcu, i32* %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %140
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %243

157:                                              ; preds = %140
  %158 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %159 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %160 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @BXTWC_ADC_LVL1_IRQ, align 4
  %163 = load i32, i32* @IRQF_ONESHOT, align 4
  %164 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %165 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %164, i32 0, i32 5
  %166 = call i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic* %158, i32 %161, i32 %162, i32 %163, i32* @bxtwc_regmap_irq_chip_adc, i32* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %157
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %243

174:                                              ; preds = %157
  %175 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %176 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %177 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @BXTWC_CHGR_LVL1_IRQ, align 4
  %180 = load i32, i32* @IRQF_ONESHOT, align 4
  %181 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %182 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %181, i32 0, i32 4
  %183 = call i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic* %175, i32 %178, i32 %179, i32 %180, i32* @bxtwc_regmap_irq_chip_chgr, i32* %182)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %174
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %188, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i32, i32* %4, align 4
  store i32 %190, i32* %2, align 4
  br label %243

191:                                              ; preds = %174
  %192 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %193 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %194 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @BXTWC_CRIT_LVL1_IRQ, align 4
  %197 = load i32, i32* @IRQF_ONESHOT, align 4
  %198 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %199 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %198, i32 0, i32 2
  %200 = call i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic* %192, i32 %195, i32 %196, i32 %197, i32* @bxtwc_regmap_irq_chip_crit, i32* %199)
  store i32 %200, i32* %4, align 4
  %201 = load i32, i32* %4, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %191
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %205, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %207 = load i32, i32* %4, align 4
  store i32 %207, i32* %2, align 4
  br label %243

208:                                              ; preds = %191
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %212 = load i32, i32* @bxt_wc_dev, align 4
  %213 = load i32, i32* @bxt_wc_dev, align 4
  %214 = call i32 @ARRAY_SIZE(i32 %213)
  %215 = call i32 @devm_mfd_add_devices(%struct.TYPE_8__* %210, i32 %211, i32 %212, i32 %214, i32* null, i32 0, i32* null)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %208
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %2, align 4
  br label %243

223:                                              ; preds = %208
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = call i32 @sysfs_create_group(i32* %226, i32* @bxtwc_group)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = load i32, i32* %4, align 4
  %234 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %2, align 4
  br label %243

236:                                              ; preds = %223
  %237 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %238 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @BXTWC_MIRQLVL1, align 4
  %241 = load i32, i32* @BXTWC_MIRQLVL1_MCHGR, align 4
  %242 = call i32 @regmap_update_bits(i32 %239, i32 %240, i32 %241, i32 0)
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %236, %230, %218, %203, %186, %169, %152, %135, %118, %101, %74, %49, %41, %27, %17
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @ACPI_HANDLE(%struct.TYPE_8__*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.intel_soc_pmic* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.intel_soc_pmic*) #1

declare dso_local i32 @devm_regmap_init(%struct.TYPE_8__*, i32*, %struct.intel_soc_pmic*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bxtwc_add_chained_irq_chip(%struct.intel_soc_pmic*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_8__*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
