; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_recycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { %struct.TYPE_2__, %struct.delta_dec* }
%struct.TYPE_2__ = type { i32 }
%struct.delta_dec = type { i32 }
%struct.delta_frame = type { i64, i64, i32, %struct.vb2_v4l2_buffer }
%struct.vb2_v4l2_buffer = type { i32 }

@recycle = common dso_local global i32 0, align 4
@DELTA_FRAME_OUT = common dso_local global i32 0, align 4
@DELTA_FRAME_FREE = common dso_local global i32 0, align 4
@DELTA_FRAME_M2M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*, %struct.delta_frame*)* @delta_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_recycle(%struct.delta_ctx* %0, %struct.delta_frame* %1) #0 {
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  %5 = alloca %struct.delta_dec*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %4, align 8
  %7 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %7, i32 0, i32 1
  %9 = load %struct.delta_dec*, %struct.delta_dec** %8, align 8
  store %struct.delta_dec* %9, %struct.delta_dec** %5, align 8
  %10 = load %struct.delta_dec*, %struct.delta_dec** %5, align 8
  %11 = load i32, i32* @recycle, align 4
  %12 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %13 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %14 = call i32 @call_dec_op(%struct.delta_dec* %10, i32 %11, %struct.delta_ctx* %12, %struct.delta_frame* %13)
  %15 = load i32, i32* @DELTA_FRAME_OUT, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %18 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %22 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DELTA_FRAME_FREE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %28 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %27, i32 0, i32 3
  store %struct.vb2_v4l2_buffer* %28, %struct.vb2_v4l2_buffer** %6, align 8
  %29 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %34 = call i32 @v4l2_m2m_buf_queue(i32 %32, %struct.vb2_v4l2_buffer* %33)
  %35 = load i32, i32* @DELTA_FRAME_M2M, align 4
  %36 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %37 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %26, %2
  %39 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %40 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %42 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret i32 0
}

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*, %struct.delta_frame*) #1

declare dso_local i32 @v4l2_m2m_buf_queue(i32, %struct.vb2_v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
