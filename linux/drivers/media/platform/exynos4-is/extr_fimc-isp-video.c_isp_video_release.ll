; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_isp = type { i32, %struct.TYPE_7__*, %struct.fimc_is_video }
%struct.TYPE_7__ = type { i32 }
%struct.fimc_is_video = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.media_entity }
%struct.media_entity = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.media_device* }
%struct.media_device = type { i32 }

@close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @isp_video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fimc_isp*, align 8
  %4 = alloca %struct.fimc_is_video*, align 8
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.fimc_isp* @video_drvdata(%struct.file* %7)
  store %struct.fimc_isp* %8, %struct.fimc_isp** %3, align 8
  %9 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %9, i32 0, i32 2
  store %struct.fimc_is_video* %10, %struct.fimc_is_video** %4, align 8
  %11 = load %struct.fimc_is_video*, %struct.fimc_is_video** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.media_entity* %14, %struct.media_entity** %5, align 8
  %15 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %16 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.media_device*, %struct.media_device** %17, align 8
  store %struct.media_device* %18, %struct.media_device** %6, align 8
  %19 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %20 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = call i64 @v4l2_fh_is_singular_file(%struct.file* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.fimc_is_video*, %struct.fimc_is_video** %4, align 8
  %27 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %32 = call i32 @media_pipeline_stop(%struct.media_entity* %31)
  %33 = load %struct.fimc_is_video*, %struct.fimc_is_video** %4, align 8
  %34 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %25, %1
  %36 = load %struct.file*, %struct.file** %2, align 8
  %37 = call i32 @vb2_fop_release(%struct.file* %36)
  %38 = load %struct.file*, %struct.file** %2, align 8
  %39 = call i64 @v4l2_fh_is_singular_file(%struct.file* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.fimc_is_video*, %struct.fimc_is_video** %4, align 8
  %43 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %42, i32 0, i32 0
  %44 = load i32, i32* @close, align 4
  %45 = call i32 @fimc_pipeline_call(%struct.TYPE_8__* %43, i32 %44)
  %46 = load %struct.media_device*, %struct.media_device** %6, align 8
  %47 = getelementptr inbounds %struct.media_device, %struct.media_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %50 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.media_device*, %struct.media_device** %6, align 8
  %54 = getelementptr inbounds %struct.media_device, %struct.media_device* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %41, %35
  %57 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %58 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @pm_runtime_put(i32* %60)
  %62 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %63 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  ret i32 0
}

declare dso_local %struct.fimc_isp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

declare dso_local i32 @vb2_fop_release(%struct.file*) #1

declare dso_local i32 @fimc_pipeline_call(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
