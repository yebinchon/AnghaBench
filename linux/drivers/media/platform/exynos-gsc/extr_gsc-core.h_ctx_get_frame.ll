; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.h_ctx_get_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.h_ctx_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_frame = type { i32 }
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Wrong buffer/video queue type (%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gsc_frame* (%struct.gsc_ctx*, i32)* @ctx_get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gsc_frame* @ctx_get_frame(%struct.gsc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.gsc_frame*, align 8
  %4 = alloca %struct.gsc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsc_frame*, align 8
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %11, i32 0, i32 1
  store %struct.gsc_frame* %12, %struct.gsc_frame** %6, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %18, i32 0, i32 0
  store %struct.gsc_frame* %19, %struct.gsc_frame** %6, align 8
  br label %26

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.gsc_frame* @ERR_PTR(i32 %24)
  store %struct.gsc_frame* %25, %struct.gsc_frame** %3, align 8
  br label %29

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %10
  %28 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  store %struct.gsc_frame* %28, %struct.gsc_frame** %3, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = load %struct.gsc_frame*, %struct.gsc_frame** %3, align 8
  ret %struct.gsc_frame* %30
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.gsc_frame* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
