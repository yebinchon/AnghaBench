; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_isp = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.exynos_video_entity }
%struct.exynos_video_entity = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @isp_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.fimc_isp*, align 8
  %5 = alloca %struct.exynos_video_entity*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.fimc_isp* @video_drvdata(%struct.file* %8)
  store %struct.fimc_isp* %9, %struct.fimc_isp** %4, align 8
  %10 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %11 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.exynos_video_entity* %12, %struct.exynos_video_entity** %5, align 8
  %13 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %14 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.media_entity* %15, %struct.media_entity** %6, align 8
  %16 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %16, i32 0, i32 0
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %80

23:                                               ; preds = %1
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = call i32 @v4l2_fh_open(%struct.file* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %75

29:                                               ; preds = %23
  %30 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %31 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_get_sync(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %72

38:                                               ; preds = %29
  %39 = load %struct.file*, %struct.file** %3, align 8
  %40 = call i64 @v4l2_fh_is_singular_file(%struct.file* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %44 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %50 = load i32, i32* @open, align 4
  %51 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %52 = call i32 @fimc_pipeline_call(%struct.exynos_video_entity* %49, i32 %50, %struct.media_entity* %51, i32 1)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %57 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %42
  %61 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %62 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %67

67:                                               ; preds = %60, %38
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %75

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %37
  %73 = load %struct.file*, %struct.file** %3, align 8
  %74 = call i32 @v4l2_fh_release(%struct.file* %73)
  br label %75

75:                                               ; preds = %72, %70, %28
  %76 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %77 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %20
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.fimc_isp* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fimc_pipeline_call(%struct.exynos_video_entity*, i32, %struct.media_entity*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
