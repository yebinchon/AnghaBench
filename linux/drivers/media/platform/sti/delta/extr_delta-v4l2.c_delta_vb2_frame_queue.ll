; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.delta_ctx = type { i64 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.delta_frame = type { i32 }

@DELTA_STATE_WF_EOS = common dso_local global i64 0, align 8
@DELTA_STATE_EOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @delta_vb2_frame_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_vb2_frame_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.delta_frame*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  store %struct.vb2_queue* %9, %struct.vb2_queue** %3, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %11 = call %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %10)
  store %struct.delta_ctx* %11, %struct.delta_ctx** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %13 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %12)
  store %struct.vb2_v4l2_buffer* %13, %struct.vb2_v4l2_buffer** %5, align 8
  %14 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %15 = call %struct.delta_frame* @to_frame(%struct.vb2_v4l2_buffer* %14)
  store %struct.delta_frame* %15, %struct.delta_frame** %6, align 8
  %16 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DELTA_STATE_WF_EOS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %23 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %24 = call i32 @delta_complete_eos(%struct.delta_ctx* %22, %struct.delta_frame* %23)
  %25 = load i64, i64* @DELTA_STATE_EOS, align 8
  %26 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %30 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %31 = call i32 @delta_recycle(%struct.delta_ctx* %29, %struct.delta_frame* %30)
  br label %32

32:                                               ; preds = %28, %21
  ret void
}

declare dso_local %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.delta_frame* @to_frame(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @delta_complete_eos(%struct.delta_ctx*, %struct.delta_frame*) #1

declare dso_local i32 @delta_recycle(%struct.delta_ctx*, %struct.delta_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
