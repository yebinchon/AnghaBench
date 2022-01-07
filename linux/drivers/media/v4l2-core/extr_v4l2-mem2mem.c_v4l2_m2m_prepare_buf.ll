; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_prepare_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_prepare_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_prepare_buf(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.vb2_queue*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %7, align 8
  %11 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %12 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %11, i32 %14)
  store %struct.vb2_queue* %15, %struct.vb2_queue** %8, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %17 = load %struct.video_device*, %struct.video_device** %7, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %23 = call i32 @vb2_prepare_buf(%struct.vb2_queue* %16, i32 %21, %struct.v4l2_buffer* %22)
  ret i32 %23
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @vb2_prepare_buf(%struct.vb2_queue*, i32, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
