; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fimc_md = type { i32, i32, i32 }

@dev_attr_subdev_conf_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimc_md_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_md_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fimc_md*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.fimc_md* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fimc_md* %6, %struct.fimc_md** %4, align 8
  %7 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %8 = icmp ne %struct.fimc_md* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %12 = call i32 @fimc_md_unregister_clk_provider(%struct.fimc_md* %11)
  %13 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %13, i32 0, i32 2
  %15 = call i32 @v4l2_async_notifier_unregister(i32* %14)
  %16 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %16, i32 0, i32 2
  %18 = call i32 @v4l2_async_notifier_cleanup(i32* %17)
  %19 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %20 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %19, i32 0, i32 1
  %21 = call i32 @v4l2_device_unregister(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @device_remove_file(i32* %23, i32* @dev_attr_subdev_conf_mode)
  %25 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %26 = call i32 @fimc_md_unregister_entities(%struct.fimc_md* %25)
  %27 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %28 = call i32 @fimc_md_pipelines_free(%struct.fimc_md* %27)
  %29 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %30 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %29, i32 0, i32 0
  %31 = call i32 @media_device_unregister(i32* %30)
  %32 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %33 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %32, i32 0, i32 0
  %34 = call i32 @media_device_cleanup(i32* %33)
  %35 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %36 = call i32 @fimc_md_put_clocks(%struct.fimc_md* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %10, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.fimc_md* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @fimc_md_unregister_clk_provider(%struct.fimc_md*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @fimc_md_unregister_entities(%struct.fimc_md*) #1

declare dso_local i32 @fimc_md_pipelines_free(%struct.fimc_md*) #1

declare dso_local i32 @media_device_unregister(i32*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

declare dso_local i32 @fimc_md_put_clocks(%struct.fimc_md*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
