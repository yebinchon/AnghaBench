; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.bdisp_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bdisp_frame = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid frame (%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @bdisp_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.bdisp_ctx*, align 8
  %13 = alloca %struct.bdisp_frame*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = call %struct.bdisp_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.bdisp_ctx* %15, %struct.bdisp_ctx** %12, align 8
  %16 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %12, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx* %16, i32 %19)
  store %struct.bdisp_frame* %20, %struct.bdisp_frame** %13, align 8
  %21 = load %struct.bdisp_frame*, %struct.bdisp_frame** %13, align 8
  %22 = call i64 @IS_ERR(%struct.bdisp_frame* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %12, align 8
  %26 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bdisp_frame*, %struct.bdisp_frame** %13, align 8
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.bdisp_frame* %30)
  %32 = load %struct.bdisp_frame*, %struct.bdisp_frame** %13, align 8
  %33 = call i32 @PTR_ERR(%struct.bdisp_frame* %32)
  store i32 %33, i32* %6, align 4
  br label %73

34:                                               ; preds = %5
  %35 = load %struct.bdisp_frame*, %struct.bdisp_frame** %13, align 8
  %36 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %12, align 8
  %41 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %73

48:                                               ; preds = %34
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bdisp_frame*, %struct.bdisp_frame** %13, align 8
  %57 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  store i32 %65, i32* %6, align 4
  br label %73

66:                                               ; preds = %48
  %67 = load i32*, i32** %9, align 8
  store i32 1, i32* %67, align 4
  %68 = load %struct.bdisp_frame*, %struct.bdisp_frame** %13, align 8
  %69 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %66, %64, %39, %24
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.bdisp_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bdisp_frame*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.bdisp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
