; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.csis_state = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@CSIS_CLK_MUX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s5pcsis_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcsis_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.csis_state*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.v4l2_subdev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.csis_state* @sd_to_csis_state(%struct.v4l2_subdev* %7)
  store %struct.csis_state* %8, %struct.csis_state** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_disable(i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @s5pcsis_pm_suspend(i32* %13, i32 1)
  %15 = load %struct.csis_state*, %struct.csis_state** %4, align 8
  %16 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @CSIS_CLK_MUX, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_disable(i32 %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @pm_runtime_set_suspended(i32* %23)
  %25 = load %struct.csis_state*, %struct.csis_state** %4, align 8
  %26 = call i32 @s5pcsis_clk_put(%struct.csis_state* %25)
  %27 = load %struct.csis_state*, %struct.csis_state** %4, align 8
  %28 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @media_entity_cleanup(i32* %29)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.csis_state* @sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @s5pcsis_pm_suspend(i32*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @s5pcsis_clk_put(%struct.csis_state*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
