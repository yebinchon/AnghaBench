; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_ctx_get_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_ctx_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_frame = type { i32 }
%struct.bdisp_ctx = type { %struct.TYPE_2__*, %struct.bdisp_frame, %struct.bdisp_frame }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Wrong buffer/video queue type (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bdisp_frame* (%struct.bdisp_ctx*, i32)* @ctx_get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.bdisp_frame*, align 8
  %4 = alloca %struct.bdisp_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 128, label %7
    i32 129, label %10
  ]

7:                                                ; preds = %2
  %8 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %8, i32 0, i32 2
  store %struct.bdisp_frame* %9, %struct.bdisp_frame** %3, align 8
  br label %25

10:                                               ; preds = %2
  %11 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %11, i32 0, i32 1
  store %struct.bdisp_frame* %12, %struct.bdisp_frame** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.bdisp_frame* @ERR_PTR(i32 %23)
  store %struct.bdisp_frame* %24, %struct.bdisp_frame** %3, align 8
  br label %25

25:                                               ; preds = %21, %10, %7
  %26 = load %struct.bdisp_frame*, %struct.bdisp_frame** %3, align 8
  ret %struct.bdisp_frame* %26
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.bdisp_frame* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
