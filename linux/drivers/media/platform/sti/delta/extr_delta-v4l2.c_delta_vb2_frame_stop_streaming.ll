; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.delta_ctx = type { i32, i32, i64, %struct.delta_frame**, %struct.delta_dec* }
%struct.delta_frame = type { i32, %struct.vb2_v4l2_buffer }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.delta_dec = type { i32 }

@flush = common dso_local global i32 0, align 4
@DELTA_FRAME_OUT = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @delta_vb2_frame_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_vb2_frame_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.delta_frame*, align 8
  %6 = alloca %struct.delta_dec*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %9 = call %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.delta_ctx* %9, %struct.delta_ctx** %3, align 8
  %10 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %10, i32 0, i32 4
  %12 = load %struct.delta_dec*, %struct.delta_dec** %11, align 8
  store %struct.delta_dec* %12, %struct.delta_dec** %6, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %14 = call i32 @delta_flush_dts(%struct.delta_ctx* %13)
  %15 = load %struct.delta_dec*, %struct.delta_dec** %6, align 8
  %16 = load i32, i32* @flush, align 4
  %17 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %18 = call i32 @call_dec_op(%struct.delta_dec* %15, i32 %16, %struct.delta_ctx* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %49, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %26, i32 0, i32 3
  %28 = load %struct.delta_frame**, %struct.delta_frame*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.delta_frame*, %struct.delta_frame** %28, i64 %30
  %32 = load %struct.delta_frame*, %struct.delta_frame** %31, align 8
  store %struct.delta_frame* %32, %struct.delta_frame** %5, align 8
  %33 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %34 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DELTA_FRAME_OUT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %25
  %40 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %41 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %40, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %41, %struct.vb2_v4l2_buffer** %4, align 8
  %42 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %43 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %44 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %25
  %46 = load i32, i32* @DELTA_FRAME_OUT, align 4
  %47 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %48 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  ret void
}

declare dso_local %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @delta_flush_dts(%struct.delta_ctx*) #1

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
