; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_get_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_get_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_ctx = type { %struct.TYPE_3__, %struct.bdisp_frame, %struct.bdisp_frame }
%struct.TYPE_3__ = type { i32 }
%struct.bdisp_frame = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdisp_ctx*)* @bdisp_get_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_get_bufs(%struct.bdisp_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdisp_ctx*, align 8
  %4 = alloca %struct.bdisp_frame*, align 8
  %5 = alloca %struct.bdisp_frame*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %3, align 8
  %9 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %9, i32 0, i32 2
  store %struct.bdisp_frame* %10, %struct.bdisp_frame** %4, align 8
  %11 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %11, i32 0, i32 1
  store %struct.bdisp_frame* %12, %struct.bdisp_frame** %5, align 8
  %13 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %16)
  store %struct.vb2_v4l2_buffer* %17, %struct.vb2_v4l2_buffer** %6, align 8
  %18 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %19 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %19, i32 0, i32 0
  %21 = load %struct.bdisp_frame*, %struct.bdisp_frame** %4, align 8
  %22 = load %struct.bdisp_frame*, %struct.bdisp_frame** %4, align 8
  %23 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bdisp_get_addr(%struct.bdisp_ctx* %18, %struct.TYPE_4__* %20, %struct.bdisp_frame* %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %34)
  store %struct.vb2_v4l2_buffer* %35, %struct.vb2_v4l2_buffer** %7, align 8
  %36 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 0
  %39 = load %struct.bdisp_frame*, %struct.bdisp_frame** %5, align 8
  %40 = load %struct.bdisp_frame*, %struct.bdisp_frame** %5, align 8
  %41 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bdisp_get_addr(%struct.bdisp_ctx* %36, %struct.TYPE_4__* %38, %struct.bdisp_frame* %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %56

48:                                               ; preds = %30
  %49 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %46, %28
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i32 @bdisp_get_addr(%struct.bdisp_ctx*, %struct.TYPE_4__*, %struct.bdisp_frame*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
