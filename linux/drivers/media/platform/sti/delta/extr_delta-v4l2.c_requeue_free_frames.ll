; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_requeue_free_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_requeue_free_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.TYPE_2__, %struct.delta_frame** }
%struct.TYPE_2__ = type { i32 }
%struct.delta_frame = type { i64, %struct.vb2_v4l2_buffer }
%struct.vb2_v4l2_buffer = type { i32 }

@DELTA_FRAME_FREE = common dso_local global i64 0, align 8
@DELTA_FRAME_M2M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ctx*)* @requeue_free_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requeue_free_frames(%struct.delta_ctx* %0) #0 {
  %2 = alloca %struct.delta_ctx*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.delta_ctx* %0, %struct.delta_ctx** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %6
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 2
  %15 = load %struct.delta_frame**, %struct.delta_frame*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.delta_frame*, %struct.delta_frame** %15, i64 %17
  %19 = load %struct.delta_frame*, %struct.delta_frame** %18, align 8
  store %struct.delta_frame* %19, %struct.delta_frame** %4, align 8
  %20 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %21 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DELTA_FRAME_FREE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %12
  %26 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %27 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %26, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %27, %struct.vb2_v4l2_buffer** %3, align 8
  %28 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %33 = call i32 @v4l2_m2m_buf_queue(i32 %31, %struct.vb2_v4l2_buffer* %32)
  %34 = load i64, i64* @DELTA_FRAME_M2M, align 8
  %35 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %36 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %25, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

declare dso_local i32 @v4l2_m2m_buf_queue(i32, %struct.vb2_v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
