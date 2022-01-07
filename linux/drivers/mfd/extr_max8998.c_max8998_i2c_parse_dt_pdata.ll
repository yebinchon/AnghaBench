; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998.c_max8998_i2c_parse_dt_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998.c_max8998_i2c_parse_dt_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8998_platform_data = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max8998_platform_data* (%struct.device*)* @max8998_i2c_parse_dt_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max8998_platform_data* @max8998_i2c_parse_dt_pdata(%struct.device* %0) #0 {
  %2 = alloca %struct.max8998_platform_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.max8998_platform_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.max8998_platform_data* @devm_kzalloc(%struct.device* %5, i32 4, i32 %6)
  store %struct.max8998_platform_data* %7, %struct.max8998_platform_data** %4, align 8
  %8 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %4, align 8
  %9 = icmp ne %struct.max8998_platform_data* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.max8998_platform_data* @ERR_PTR(i32 %12)
  store %struct.max8998_platform_data* %13, %struct.max8998_platform_data** %2, align 8
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @irq_of_parse_and_map(i32 %17, i32 1)
  %19 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %4, align 8
  store %struct.max8998_platform_data* %21, %struct.max8998_platform_data** %2, align 8
  br label %22

22:                                               ; preds = %14, %10
  %23 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %2, align 8
  ret %struct.max8998_platform_data* %23
}

declare dso_local %struct.max8998_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.max8998_platform_data* @ERR_PTR(i32) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
