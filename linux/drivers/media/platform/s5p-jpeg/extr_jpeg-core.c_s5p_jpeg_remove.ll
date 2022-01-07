; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s5p_jpeg = type { i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s5p_jpeg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.s5p_jpeg* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.s5p_jpeg* %6, %struct.s5p_jpeg** %3, align 8
  %7 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pm_runtime_disable(i32 %9)
  %11 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %12 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @video_unregister_device(i32 %13)
  %15 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %16 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @video_unregister_device(i32 %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @vb2_dma_contig_clear_max_seg_size(i32* %20)
  %22 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %23 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @v4l2_m2m_release(i32 %24)
  %26 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %27 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %26, i32 0, i32 2
  %28 = call i32 @v4l2_device_unregister(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_status_suspended(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %1
  %34 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %35 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %52, %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %45 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  br label %40

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %1
  ret i32 0
}

declare dso_local %struct.s5p_jpeg* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @vb2_dma_contig_clear_max_seg_size(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
