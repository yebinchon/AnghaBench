; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_white_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___ctrl_set_white_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32 }

@ISP_AWB_COMMAND_AUTO = common dso_local global i32 0, align 4
@ISP_AWB_COMMAND_ILLUMINATION = common dso_local global i32 0, align 4
@ISP_AWB_ILLUMINATION_DAYLIGHT = common dso_local global i32 0, align 4
@ISP_AWB_ILLUMINATION_CLOUDY = common dso_local global i32 0, align 4
@ISP_AWB_ILLUMINATION_TUNGSTEN = common dso_local global i32 0, align 4
@ISP_AWB_ILLUMINATION_FLUORESCENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*, i32)* @__ctrl_set_white_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctrl_set_white_balance(%struct.fimc_is* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_is*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 132, label %7
    i32 130, label %11
    i32 131, label %16
    i32 128, label %21
    i32 129, label %26
  ]

7:                                                ; preds = %2
  %8 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %9 = load i32, i32* @ISP_AWB_COMMAND_AUTO, align 4
  %10 = call i32 @__is_set_isp_awb(%struct.fimc_is* %8, i32 %9, i32 0)
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %13 = load i32, i32* @ISP_AWB_COMMAND_ILLUMINATION, align 4
  %14 = load i32, i32* @ISP_AWB_ILLUMINATION_DAYLIGHT, align 4
  %15 = call i32 @__is_set_isp_awb(%struct.fimc_is* %12, i32 %13, i32 %14)
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %18 = load i32, i32* @ISP_AWB_COMMAND_ILLUMINATION, align 4
  %19 = load i32, i32* @ISP_AWB_ILLUMINATION_CLOUDY, align 4
  %20 = call i32 @__is_set_isp_awb(%struct.fimc_is* %17, i32 %18, i32 %19)
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %23 = load i32, i32* @ISP_AWB_COMMAND_ILLUMINATION, align 4
  %24 = load i32, i32* @ISP_AWB_ILLUMINATION_TUNGSTEN, align 4
  %25 = call i32 @__is_set_isp_awb(%struct.fimc_is* %22, i32 %23, i32 %24)
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %28 = load i32, i32* @ISP_AWB_COMMAND_ILLUMINATION, align 4
  %29 = load i32, i32* @ISP_AWB_ILLUMINATION_FLUORESCENT, align 4
  %30 = call i32 @__is_set_isp_awb(%struct.fimc_is* %27, i32 %28, i32 %29)
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %26, %21, %16, %11, %7
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @__is_set_isp_awb(%struct.fimc_is*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
