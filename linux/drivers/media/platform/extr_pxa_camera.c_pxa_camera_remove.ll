; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa_camera_dev = type { i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"PXA Camera driver unloaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_camera_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pxa_camera_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.pxa_camera_dev* @dev_get_drvdata(i32* %5)
  store %struct.pxa_camera_dev* %6, %struct.pxa_camera_dev** %3, align 8
  %7 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %8 = call i32 @pxa_camera_deactivate(%struct.pxa_camera_dev* %7)
  %9 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dma_release_channel(i32 %13)
  %15 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_release_channel(i32 %19)
  %21 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_release_channel(i32 %25)
  %27 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %27, i32 0, i32 2
  %29 = call i32 @v4l2_async_notifier_unregister(i32* %28)
  %30 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %30, i32 0, i32 2
  %32 = call i32 @v4l2_async_notifier_cleanup(i32* %31)
  %33 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @v4l2_clk_unregister(i32* %40)
  %42 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %45, i32 0, i32 0
  %47 = call i32 @v4l2_device_unregister(i32* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.pxa_camera_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pxa_camera_deactivate(%struct.pxa_camera_dev*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_clk_unregister(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
