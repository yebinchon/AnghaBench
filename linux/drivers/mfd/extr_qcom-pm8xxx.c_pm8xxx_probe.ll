; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-pm8xxx.c_pm8xxx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pm_irq_data = type { i32*, i8* }
%struct.regmap = type { i32 }
%struct.pm_irq_chip = type { i32, i32, %struct.pm_irq_data*, i8*, i8*, %struct.regmap* }

@.str = private unnamed_addr constant [31 x i8] c"No matching driver data found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ssbi_regmap_config = common dso_local global i32 0, align 4
@REG_HWREV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to read hw rev reg %d:rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PMIC revision 1: %02X\0A\00", align 1
@REG_HWREV_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to read hw rev 2 reg %d:rc=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"PMIC revision 2: %02X\0A\00", align 1
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@config = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pm8xxx_irq_domain_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8xxx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm_irq_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pm_irq_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.pm_irq_data* @of_device_get_match_data(%struct.TYPE_6__* %12)
  store %struct.pm_irq_data* %13, %struct.pm_irq_data** %4, align 8
  %14 = load %struct.pm_irq_data*, %struct.pm_irq_data** %4, align 8
  %15 = icmp ne %struct.pm_irq_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %161

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_get_irq(%struct.platform_device* %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %161

29:                                               ; preds = %22
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.regmap* @devm_regmap_init(%struct.TYPE_6__* %31, i32* null, i32 %35, i32* @ssbi_regmap_config)
  store %struct.regmap* %36, %struct.regmap** %5, align 8
  %37 = load %struct.regmap*, %struct.regmap** %5, align 8
  %38 = call i64 @IS_ERR(%struct.regmap* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.regmap*, %struct.regmap** %5, align 8
  %42 = call i32 @PTR_ERR(%struct.regmap* %41)
  store i32 %42, i32* %2, align 4
  br label %161

43:                                               ; preds = %29
  %44 = load %struct.regmap*, %struct.regmap** %5, align 8
  %45 = load i32, i32* @REG_HWREV, align 4
  %46 = call i32 @regmap_read(%struct.regmap* %44, i32 %45, i32* %8)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @REG_HWREV, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %161

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %9, align 4
  %58 = load %struct.regmap*, %struct.regmap** %5, align 8
  %59 = load i32, i32* @REG_HWREV_2, align 4
  %60 = call i32 @regmap_read(%struct.regmap* %58, i32 %59, i32* %8)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i32, i32* @REG_HWREV_2, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %161

68:                                               ; preds = %54
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BITS_PER_BYTE, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %79 = load i32, i32* @config, align 4
  %80 = load %struct.pm_irq_data*, %struct.pm_irq_data** %4, align 8
  %81 = getelementptr inbounds %struct.pm_irq_data, %struct.pm_irq_data* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @struct_size(%struct.pm_irq_chip* %78, i32 %79, i8* %82)
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.pm_irq_chip* @devm_kzalloc(%struct.TYPE_6__* %77, i32 %83, i32 %84)
  store %struct.pm_irq_chip* %85, %struct.pm_irq_chip** %10, align 8
  %86 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %87 = icmp ne %struct.pm_irq_chip* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %68
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %161

91:                                               ; preds = %68
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %94 = call i32 @platform_set_drvdata(%struct.platform_device* %92, %struct.pm_irq_chip* %93)
  %95 = load %struct.regmap*, %struct.regmap** %5, align 8
  %96 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %97 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %96, i32 0, i32 5
  store %struct.regmap* %95, %struct.regmap** %97, align 8
  %98 = load %struct.pm_irq_data*, %struct.pm_irq_data** %4, align 8
  %99 = getelementptr inbounds %struct.pm_irq_data, %struct.pm_irq_data* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @DIV_ROUND_UP(i8* %100, i32 8)
  %102 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %103 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %105 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @DIV_ROUND_UP(i8* %106, i32 8)
  %108 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %109 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.pm_irq_data*, %struct.pm_irq_data** %4, align 8
  %111 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %112 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %111, i32 0, i32 2
  store %struct.pm_irq_data* %110, %struct.pm_irq_data** %112, align 8
  %113 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %114 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %113, i32 0, i32 1
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pm_irq_data*, %struct.pm_irq_data** %4, align 8
  %121 = getelementptr inbounds %struct.pm_irq_data, %struct.pm_irq_data* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %124 = call i32 @irq_domain_add_linear(i32 %119, i8* %122, i32* @pm8xxx_irq_domain_ops, %struct.pm_irq_chip* %123)
  %125 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %126 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %128 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %91
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %161

134:                                              ; preds = %91
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.pm_irq_data*, %struct.pm_irq_data** %4, align 8
  %137 = getelementptr inbounds %struct.pm_irq_data, %struct.pm_irq_data* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %140 = call i32 @irq_set_chained_handler_and_data(i32 %135, i32* %138, %struct.pm_irq_chip* %139)
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @irq_set_irq_wake(i32 %141, i32 1)
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @of_platform_populate(i32 %146, i32* null, i32* null, %struct.TYPE_6__* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %134
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @irq_set_chained_handler_and_data(i32 %153, i32* null, %struct.pm_irq_chip* null)
  %155 = load %struct.pm_irq_chip*, %struct.pm_irq_chip** %10, align 8
  %156 = getelementptr inbounds %struct.pm_irq_chip, %struct.pm_irq_chip* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @irq_domain_remove(i32 %157)
  br label %159

159:                                              ; preds = %152, %134
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %131, %88, %63, %49, %40, %27, %16
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.pm_irq_data* @of_device_get_match_data(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.pm_irq_chip* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.pm_irq_chip*, i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm_irq_chip*) #1

declare dso_local i8* @DIV_ROUND_UP(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @irq_domain_add_linear(i32, i8*, i32*, %struct.pm_irq_chip*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32*, %struct.pm_irq_chip*) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
