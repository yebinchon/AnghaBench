; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c___gsc_m2m_cleanup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c___gsc_m2m_cleanup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_ctx*)* @__gsc_m2m_cleanup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gsc_m2m_cleanup_queue(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @v4l2_m2m_num_src_bufs_ready(i32 %8)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %14)
  store %struct.vb2_v4l2_buffer* %15, %struct.vb2_v4l2_buffer** %3, align 8
  %16 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %17 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %18 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %16, i32 %17)
  br label %5

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %26, %19
  %21 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @v4l2_m2m_num_dst_bufs_ready(i32 %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %29)
  store %struct.vb2_v4l2_buffer* %30, %struct.vb2_v4l2_buffer** %4, align 8
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %32 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %33 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %31, i32 %32)
  br label %20

34:                                               ; preds = %20
  ret void
}

declare dso_local i64 @v4l2_m2m_num_src_bufs_ready(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i64 @v4l2_m2m_num_dst_bufs_ready(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
