; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c___bdisp_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c___bdisp_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_ctx = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ctrl = type { i32, i32, i32 }

@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown control %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BDISP_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdisp_ctx*, %struct.v4l2_ctrl*)* @__bdisp_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bdisp_s_ctrl(%struct.bdisp_ctx* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bdisp_ctx*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 128, label %23
  ]

17:                                               ; preds = %13
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  br label %41

23:                                               ; preds = %13
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %41

29:                                               ; preds = %13
  %30 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %23, %17
  %42 = load i32, i32* @BDISP_PARAMS, align 4
  %43 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %29, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
