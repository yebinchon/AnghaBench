; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_get_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_get_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32, %struct.gsc_frame, %struct.gsc_frame }
%struct.gsc_frame = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_ctx*)* @gsc_get_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_get_bufs(%struct.gsc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_ctx*, align 8
  %4 = alloca %struct.gsc_frame*, align 8
  %5 = alloca %struct.gsc_frame*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %3, align 8
  %9 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %9, i32 0, i32 2
  store %struct.gsc_frame* %10, %struct.gsc_frame** %4, align 8
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %11, i32 0, i32 1
  store %struct.gsc_frame* %12, %struct.gsc_frame** %5, align 8
  %13 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %15)
  store %struct.vb2_v4l2_buffer* %16, %struct.vb2_v4l2_buffer** %6, align 8
  %17 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %18, i32 0, i32 0
  %20 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %21 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %22 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %21, i32 0, i32 0
  %23 = call i32 @gsc_prepare_addr(%struct.gsc_ctx* %17, %struct.TYPE_2__* %19, %struct.gsc_frame* %20, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %31)
  store %struct.vb2_v4l2_buffer* %32, %struct.vb2_v4l2_buffer** %7, align 8
  %33 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 0
  %36 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %37 = load %struct.gsc_frame*, %struct.gsc_frame** %5, align 8
  %38 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %37, i32 0, i32 0
  %39 = call i32 @gsc_prepare_addr(%struct.gsc_ctx* %33, %struct.TYPE_2__* %35, %struct.gsc_frame* %36, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %52

44:                                               ; preds = %28
  %45 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %44, %42, %26
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i32 @gsc_prepare_addr(%struct.gsc_ctx*, %struct.TYPE_2__*, %struct.gsc_frame*, i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
