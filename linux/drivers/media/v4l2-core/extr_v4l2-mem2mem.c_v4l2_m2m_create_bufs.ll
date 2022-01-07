; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_create_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_create_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.v4l2_create_buffers = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_create_bufs(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.v4l2_create_buffers* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.v4l2_create_buffers*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.v4l2_create_buffers* %2, %struct.v4l2_create_buffers** %6, align 8
  %8 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %9 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %8, i32 %12)
  store %struct.vb2_queue* %13, %struct.vb2_queue** %7, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %6, align 8
  %16 = call i32 @vb2_create_bufs(%struct.vb2_queue* %14, %struct.v4l2_create_buffers* %15)
  ret i32 %16
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @vb2_create_bufs(%struct.vb2_queue*, %struct.v4l2_create_buffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
