; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.fimc_lite = type { %struct.flite_frame }
%struct.flite_frame = type { %struct.TYPE_2__, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @fimc_lite_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.fimc_lite*, align 8
  %9 = alloca %struct.flite_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.fimc_lite* @video_drvdata(%struct.file* %10)
  store %struct.fimc_lite* %11, %struct.fimc_lite** %8, align 8
  %12 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %13 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %12, i32 0, i32 0
  store %struct.flite_frame* %13, %struct.flite_frame** %9, align 8
  %14 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %52 [
    i32 129, label %26
    i32 128, label %26
    i32 130, label %45
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.flite_frame*, %struct.flite_frame** %9, align 8
  %34 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.flite_frame*, %struct.flite_frame** %9, align 8
  %40 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %55

45:                                               ; preds = %22
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 2
  %48 = load %struct.flite_frame*, %struct.flite_frame** %9, align 8
  %49 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %48, i32 0, i32 0
  %50 = bitcast %struct.TYPE_2__* %47 to i8*
  %51 = bitcast %struct.TYPE_2__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %55

52:                                               ; preds = %22
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %45, %26, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.fimc_lite* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
