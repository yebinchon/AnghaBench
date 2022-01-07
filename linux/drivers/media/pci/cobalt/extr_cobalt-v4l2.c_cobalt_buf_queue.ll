; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, %struct.vb2_queue* }
%struct.vb2_queue = type { %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32, i32, %struct.sg_dma_desc_info* }
%struct.sg_dma_desc_info = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.cobalt_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @cobalt_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.cobalt_stream*, align 8
  %6 = alloca %struct.cobalt_buffer*, align 8
  %7 = alloca %struct.sg_dma_desc_info*, align 8
  %8 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %3, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 1
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  store %struct.vb2_queue* %13, %struct.vb2_queue** %4, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load %struct.cobalt_stream*, %struct.cobalt_stream** %15, align 8
  store %struct.cobalt_stream* %16, %struct.cobalt_stream** %5, align 8
  %17 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %18 = call %struct.cobalt_buffer* @to_cobalt_buffer(%struct.vb2_v4l2_buffer* %17)
  store %struct.cobalt_buffer* %18, %struct.cobalt_buffer** %6, align 8
  %19 = load %struct.cobalt_stream*, %struct.cobalt_stream** %5, align 8
  %20 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %19, i32 0, i32 2
  %21 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %20, align 8
  %22 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %23 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %21, i64 %24
  store %struct.sg_dma_desc_info* %25, %struct.sg_dma_desc_info** %7, align 8
  %26 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %7, align 8
  %27 = call i32 @descriptor_list_loopback(%struct.sg_dma_desc_info* %26)
  %28 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %7, align 8
  %29 = call i32 @descriptor_list_interrupt_disable(%struct.sg_dma_desc_info* %28)
  %30 = load %struct.cobalt_stream*, %struct.cobalt_stream** %5, align 8
  %31 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.cobalt_buffer*, %struct.cobalt_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.cobalt_buffer, %struct.cobalt_buffer* %34, i32 0, i32 0
  %36 = load %struct.cobalt_stream*, %struct.cobalt_stream** %5, align 8
  %37 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %36, i32 0, i32 1
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  %39 = load %struct.cobalt_stream*, %struct.cobalt_stream** %5, align 8
  %40 = call i32 @chain_all_buffers(%struct.cobalt_stream* %39)
  %41 = load %struct.cobalt_stream*, %struct.cobalt_stream** %5, align 8
  %42 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.cobalt_buffer* @to_cobalt_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @descriptor_list_loopback(%struct.sg_dma_desc_info*) #1

declare dso_local i32 @descriptor_list_interrupt_disable(%struct.sg_dma_desc_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @chain_all_buffers(%struct.cobalt_stream*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
