; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_metering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_metering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32 }

@ISP_METERING_COMMAND_AVERAGE = common dso_local global i32 0, align 4
@ISP_METERING_COMMAND_CENTER = common dso_local global i32 0, align 4
@ISP_METERING_COMMAND_SPOT = common dso_local global i32 0, align 4
@ISP_METERING_COMMAND_MATRIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IS_METERING_CONFIG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*, i32)* @__ctrl_set_metering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctrl_set_metering(%struct.fimc_is* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_is*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %16 [
    i32 131, label %8
    i32 130, label %10
    i32 128, label %12
    i32 129, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @ISP_METERING_COMMAND_AVERAGE, align 4
  store i32 %9, i32* %6, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @ISP_METERING_COMMAND_CENTER, align 4
  store i32 %11, i32* %6, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @ISP_METERING_COMMAND_SPOT, align 4
  store i32 %13, i32* %6, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @ISP_METERING_COMMAND_MATRIX, align 4
  store i32 %15, i32* %6, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %14, %12, %10, %8
  %20 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %21 = load i32, i32* @IS_METERING_CONFIG_CMD, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @__is_set_isp_metering(%struct.fimc_is* %20, i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @__is_set_isp_metering(%struct.fimc_is*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
