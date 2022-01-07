; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i32 }
%struct.fimc_lite = type { i32 }

@u32 = common dso_local global i32 0, align 4
@FLITE_REQ_BUFS_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @fimc_lite_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_requestbuffers*, align 8
  %7 = alloca %struct.fimc_lite*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.fimc_lite* @video_drvdata(%struct.file* %9)
  store %struct.fimc_lite* %10, %struct.fimc_lite** %7, align 8
  %11 = load i32, i32* @u32, align 4
  %12 = load i32, i32* @FLITE_REQ_BUFS_MIN, align 4
  %13 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @max_t(i32 %11, i32 %12, i32 %15)
  %17 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %22 = call i32 @vb2_ioctl_reqbufs(%struct.file* %19, i8* %20, %struct.v4l2_requestbuffers* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %30 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local %struct.fimc_lite* @video_drvdata(%struct.file*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @vb2_ioctl_reqbufs(%struct.file*, i8*, %struct.v4l2_requestbuffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
