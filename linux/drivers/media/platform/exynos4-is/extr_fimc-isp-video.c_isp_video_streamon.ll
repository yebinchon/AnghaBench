; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_isp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.exynos_video_entity }
%struct.exynos_video_entity = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @isp_video_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fimc_isp*, align 8
  %9 = alloca %struct.exynos_video_entity*, align 8
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.fimc_isp* @video_drvdata(%struct.file* %12)
  store %struct.fimc_isp* %13, %struct.fimc_isp** %8, align 8
  %14 = load %struct.fimc_isp*, %struct.fimc_isp** %8, align 8
  %15 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store %struct.exynos_video_entity* %16, %struct.exynos_video_entity** %9, align 8
  %17 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %9, align 8
  %18 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.media_entity* %19, %struct.media_entity** %10, align 8
  %20 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %21 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %9, align 8
  %22 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @media_pipeline_start(%struct.media_entity* %20, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load %struct.fimc_isp*, %struct.fimc_isp** %8, align 8
  %32 = call i32 @isp_video_pipeline_validate(%struct.fimc_isp* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %48

36:                                               ; preds = %30
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @vb2_ioctl_streamon(%struct.file* %37, i8* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.fimc_isp*, %struct.fimc_isp** %8, align 8
  %46 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i32 0, i32* %4, align 4
  br label %52

48:                                               ; preds = %43, %35
  %49 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %50 = call i32 @media_pipeline_stop(%struct.media_entity* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %44, %28
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.fimc_isp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @media_pipeline_start(%struct.media_entity*, i32*) #1

declare dso_local i32 @isp_video_pipeline_validate(%struct.fimc_isp*) #1

declare dso_local i32 @vb2_ioctl_streamon(%struct.file*, i8*, i32) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
