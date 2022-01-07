; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.fimc_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fimc_ctx* }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @fimc_cap_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_cap_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca %struct.fimc_ctx*, align 8
  %10 = alloca %struct.fimc_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.fimc_dev* @video_drvdata(%struct.file* %11)
  store %struct.fimc_dev* %12, %struct.fimc_dev** %8, align 8
  %13 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.fimc_ctx*, %struct.fimc_ctx** %15, align 8
  store %struct.fimc_ctx* %16, %struct.fimc_ctx** %9, align 8
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %17, i32 0, i32 1
  store %struct.fimc_frame* %18, %struct.fimc_frame** %10, align 8
  %19 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %3
  %28 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %81 [
    i32 131, label %31
    i32 132, label %31
    i32 129, label %34
    i32 128, label %34
    i32 133, label %53
    i32 130, label %56
  ]

31:                                               ; preds = %27, %27
  %32 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %32, i32 0, i32 0
  store %struct.fimc_frame* %33, %struct.fimc_frame** %10, align 8
  br label %34

34:                                               ; preds = %27, %27, %31
  %35 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %42 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %48 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %84

53:                                               ; preds = %27
  %54 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %54, i32 0, i32 0
  store %struct.fimc_frame* %55, %struct.fimc_frame** %10, align 8
  br label %56

56:                                               ; preds = %27, %53
  %57 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %58 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %64 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %70 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %76 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %84

81:                                               ; preds = %27
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %56, %34, %24
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.fimc_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
