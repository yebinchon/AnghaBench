; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_frame_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_frame_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32 }
%struct.delta_frame = type { %struct.TYPE_2__, %struct.vb2_v4l2_buffer, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.vb2_v4l2_buffer = type { i64 }

@DELTA_FRAME_OUT = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ctx*, %struct.delta_frame*, i32)* @delta_frame_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_frame_done(%struct.delta_ctx* %0, %struct.delta_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %9 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %10 = call i32 @dump_frame(%struct.delta_ctx* %8, %struct.delta_frame* %9)
  %11 = load i32, i32* @DELTA_FRAME_OUT, align 4
  %12 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %13 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %17 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %16, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %17, %struct.vb2_v4l2_buffer** %7, align 8
  %18 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = sext i32 %20 to i64
  %23 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %25, i32 %33)
  %35 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %36 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %32
  ret void
}

declare dso_local i32 @dump_frame(%struct.delta_ctx*, %struct.delta_frame*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
