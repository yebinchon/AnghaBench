; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_video_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_video_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_video = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.isp_ccdc_device }
%struct.isp_ccdc_device = type { i32, i64, i32, i32, i64, i32 }
%struct.isp_buffer = type { i32 }

@CCDC_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_CONTINUOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.isp_buffer*)* @ccdc_video_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_video_queue(%struct.isp_video* %0, %struct.isp_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_video*, align 8
  %5 = alloca %struct.isp_buffer*, align 8
  %6 = alloca %struct.isp_ccdc_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.isp_video* %0, %struct.isp_video** %4, align 8
  store %struct.isp_buffer* %1, %struct.isp_buffer** %5, align 8
  %9 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %10 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.isp_ccdc_device* %12, %struct.isp_ccdc_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %14 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %24 = load %struct.isp_buffer*, %struct.isp_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ccdc_set_outaddr(%struct.isp_ccdc_device* %23, i32 %26)
  %28 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %29 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %28, i32 0, i32 3
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %33 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ISP_PIPELINE_STREAM_CONTINUOUS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %22
  %38 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %39 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %44 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  br label %51

48:                                               ; preds = %42, %37, %22
  %49 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %50 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %53 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %52, i32 0, i32 3
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %60 = call i32 @ccdc_enable(%struct.isp_ccdc_device* %59)
  br label %61

61:                                               ; preds = %58, %51
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ccdc_set_outaddr(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ccdc_enable(%struct.isp_ccdc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
