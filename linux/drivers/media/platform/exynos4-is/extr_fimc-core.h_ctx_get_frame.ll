; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.h_ctx_get_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.h_ctx_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_frame = type { i32 }
%struct.fimc_ctx = type { %struct.TYPE_2__*, %struct.fimc_frame, %struct.fimc_frame }
%struct.TYPE_2__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@FIMC_CTX_M2M = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Wrong buffer/video queue type (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fimc_frame* (%struct.fimc_ctx*, i32)* @ctx_get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fimc_frame* @ctx_get_frame(%struct.fimc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_frame*, align 8
  %4 = alloca %struct.fimc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_frame*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @FIMC_CTX_M2M, align 4
  %16 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %17 = call i64 @fimc_ctx_state_is_set(i32 %15, %struct.fimc_ctx* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %20, i32 0, i32 2
  store %struct.fimc_frame* %21, %struct.fimc_frame** %6, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.fimc_frame* @ERR_PTR(i32 %24)
  store %struct.fimc_frame* %25, %struct.fimc_frame** %3, align 8
  br label %52

26:                                               ; preds = %19
  br label %50

27:                                               ; preds = %10
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %36, i32 0, i32 1
  store %struct.fimc_frame* %37, %struct.fimc_frame** %6, align 8
  br label %49

38:                                               ; preds = %31
  %39 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @v4l2_err(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.fimc_frame* @ERR_PTR(i32 %47)
  store %struct.fimc_frame* %48, %struct.fimc_frame** %3, align 8
  br label %52

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.fimc_frame*, %struct.fimc_frame** %6, align 8
  store %struct.fimc_frame* %51, %struct.fimc_frame** %3, align 8
  br label %52

52:                                               ; preds = %50, %38, %22
  %53 = load %struct.fimc_frame*, %struct.fimc_frame** %3, align 8
  ret %struct.fimc_frame* %53
}

declare dso_local i64 @fimc_ctx_state_is_set(i32, %struct.fimc_ctx*) #1

declare dso_local %struct.fimc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @v4l2_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
