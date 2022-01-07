; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vim2m_ctx = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @vim2m_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vim2m_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.vim2m_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call %struct.vim2m_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.vim2m_ctx* %7, %struct.vim2m_ctx** %3, align 8
  %8 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %8, i32 0, i32 3
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  br label %11

11:                                               ; preds = %33, %1
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %21)
  store %struct.vb2_v4l2_buffer* %22, %struct.vb2_v4l2_buffer** %4, align 8
  br label %29

23:                                               ; preds = %11
  %24 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %27)
  store %struct.vb2_v4l2_buffer* %28, %struct.vb2_v4l2_buffer** %4, align 8
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %31 = icmp ne %struct.vb2_v4l2_buffer* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  ret void

33:                                               ; preds = %29
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %39, i32 0, i32 1
  %41 = call i32 @v4l2_ctrl_request_complete(i32 %38, i32* %40)
  %42 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %47 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %48 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %46, i32 %47)
  %49 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %11
}

declare dso_local %struct.vim2m_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_ctrl_request_complete(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
