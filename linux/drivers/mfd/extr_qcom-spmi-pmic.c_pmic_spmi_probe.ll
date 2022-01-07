; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-spmi-pmic.c_pmic_spmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-spmi-pmic.c_pmic_spmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_device = type { i32, i32 }
%struct.regmap = type { i32 }

@spmi_regmap_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_device*)* @pmic_spmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_spmi_probe(%struct.spmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spmi_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.spmi_device* %0, %struct.spmi_device** %3, align 8
  %5 = load %struct.spmi_device*, %struct.spmi_device** %3, align 8
  %6 = call %struct.regmap* @devm_regmap_init_spmi_ext(%struct.spmi_device* %5, i32* @spmi_regmap_config)
  store %struct.regmap* %6, %struct.regmap** %4, align 8
  %7 = load %struct.regmap*, %struct.regmap** %4, align 8
  %8 = call i64 @IS_ERR(%struct.regmap* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.regmap* %11)
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.spmi_device*, %struct.spmi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.regmap*, %struct.regmap** %4, align 8
  %21 = load %struct.spmi_device*, %struct.spmi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %21, i32 0, i32 1
  %23 = call i32 @pmic_spmi_show_revid(%struct.regmap* %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.spmi_device*, %struct.spmi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %25, i32 0, i32 1
  %27 = call i32 @devm_of_platform_populate(i32* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.regmap* @devm_regmap_init_spmi_ext(%struct.spmi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @pmic_spmi_show_revid(%struct.regmap*, i32*) #1

declare dso_local i32 @devm_of_platform_populate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
