; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_return_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_return_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vicodec_ctx = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*, i32)* @vicodec_return_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vicodec_return_bufs(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vicodec_ctx*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %8 = call %struct.vicodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.vicodec_ctx* %8, %struct.vicodec_ctx** %5, align 8
  br label %9

9:                                                ; preds = %31, %2
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %19)
  store %struct.vb2_v4l2_buffer* %20, %struct.vb2_v4l2_buffer** %6, align 8
  br label %27

21:                                               ; preds = %9
  %22 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %25)
  store %struct.vb2_v4l2_buffer* %26, %struct.vb2_v4l2_buffer** %6, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %29 = icmp eq %struct.vb2_v4l2_buffer* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  ret void

31:                                               ; preds = %27
  %32 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %37, i32 0, i32 1
  %39 = call i32 @v4l2_ctrl_request_complete(i32 %36, i32* %38)
  %40 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @spin_lock(i32 %42)
  %44 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %44, i32 %45)
  %47 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @spin_unlock(i32 %49)
  br label %9
}

declare dso_local %struct.vicodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_ctrl_request_complete(i32, i32*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
