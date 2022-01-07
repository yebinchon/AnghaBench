; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.pxp_ctx = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @pxp_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxp_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.pxp_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call %struct.pxp_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.pxp_ctx* %7, %struct.pxp_ctx** %3, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %10 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %18)
  store %struct.vb2_v4l2_buffer* %19, %struct.vb2_v4l2_buffer** %4, align 8
  br label %26

20:                                               ; preds = %8
  %21 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %24)
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %4, align 8
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %28 = icmp eq %struct.vb2_v4l2_buffer* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  ret void

30:                                               ; preds = %26
  %31 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %38 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %39 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %37, i32 %38)
  %40 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %8
}

declare dso_local %struct.pxp_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
