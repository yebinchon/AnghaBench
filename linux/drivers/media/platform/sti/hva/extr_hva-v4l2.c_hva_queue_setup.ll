; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.device = type { i32 }
%struct.hva_ctx = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%s %s queue setup: num_buffers %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @hva_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.hva_ctx*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.hva_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.hva_ctx* %16, %struct.hva_ctx** %12, align 8
  %17 = load %struct.hva_ctx*, %struct.hva_ctx** %12, align 8
  %18 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %17)
  store %struct.device* %18, %struct.device** %13, align 8
  %19 = load %struct.device*, %struct.device** %13, align 8
  %20 = load %struct.hva_ctx*, %struct.hva_ctx** %12, align 8
  %21 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @to_type_str(i64 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %28)
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %5
  %36 = load %struct.hva_ctx*, %struct.hva_ctx** %12, align 8
  %37 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %44

40:                                               ; preds = %5
  %41 = load %struct.hva_ctx*, %struct.hva_ctx** %12, align 8
  %42 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %39, %35 ], [ %43, %40 ]
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 0, %58 ]
  store i32 %60, i32* %6, align 4
  br label %66

61:                                               ; preds = %44
  %62 = load i32*, i32** %9, align 8
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %59
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.hva_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @to_type_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
