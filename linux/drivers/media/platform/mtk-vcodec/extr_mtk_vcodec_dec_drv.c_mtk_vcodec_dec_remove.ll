; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_drv.c_mtk_vcodec_dec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_drv.c_mtk_vcodec_dec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_vcodec_dev = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_vcodec_dec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_vcodec_dec_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtk_vcodec_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.mtk_vcodec_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.mtk_vcodec_dev* %5, %struct.mtk_vcodec_dev** %3, align 8
  %6 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @flush_workqueue(i32 %8)
  %10 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @destroy_workqueue(i32 %12)
  %14 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @v4l2_m2m_release(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @video_unregister_device(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %34, i32 0, i32 0
  %36 = call i32 @v4l2_device_unregister(i32* %35)
  %37 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %38 = call i32 @mtk_vcodec_release_dec_pm(%struct.mtk_vcodec_dev* %37)
  ret i32 0
}

declare dso_local %struct.mtk_vcodec_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @v4l2_m2m_release(i64) #1

declare dso_local i32 @video_unregister_device(i64) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @mtk_vcodec_release_dec_pm(%struct.mtk_vcodec_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
