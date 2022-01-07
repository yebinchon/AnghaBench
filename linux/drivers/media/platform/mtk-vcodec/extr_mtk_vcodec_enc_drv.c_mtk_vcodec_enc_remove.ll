; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_drv.c_mtk_vcodec_enc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_drv.c_mtk_vcodec_enc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_vcodec_dev = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_vcodec_enc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_vcodec_enc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtk_vcodec_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.mtk_vcodec_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.mtk_vcodec_dev* %5, %struct.mtk_vcodec_dev** %3, align 8
  %6 = call i32 (...) @mtk_v4l2_debug_enter()
  %7 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @flush_workqueue(i32 %9)
  %11 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @destroy_workqueue(i32 %13)
  %15 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @v4l2_m2m_release(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @video_unregister_device(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %35, i32 0, i32 0
  %37 = call i32 @v4l2_device_unregister(i32* %36)
  %38 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %39 = call i32 @mtk_vcodec_release_enc_pm(%struct.mtk_vcodec_dev* %38)
  ret i32 0
}

declare dso_local %struct.mtk_vcodec_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mtk_v4l2_debug_enter(...) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @v4l2_m2m_release(i64) #1

declare dso_local i32 @video_unregister_device(i64) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @mtk_vcodec_release_enc_pm(%struct.mtk_vcodec_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
