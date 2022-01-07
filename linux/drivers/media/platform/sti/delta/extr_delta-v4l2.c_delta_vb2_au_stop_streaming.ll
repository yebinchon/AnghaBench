; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_au_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_au_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.delta_ctx = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @delta_vb2_au_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_vb2_au_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.delta_ctx* %6, %struct.delta_ctx** %3, align 8
  %7 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %8 = call i32 @delta_flush_dts(%struct.delta_ctx* %7)
  br label %9

9:                                                ; preds = %16, %1
  %10 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %13)
  store %struct.vb2_v4l2_buffer* %14, %struct.vb2_v4l2_buffer** %4, align 8
  %15 = icmp ne %struct.vb2_v4l2_buffer* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %18 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %19 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %17, i32 %18)
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  ret void
}

declare dso_local %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @delta_flush_dts(%struct.delta_ctx*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
