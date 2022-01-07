; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.bttv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bttv_buffer = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.videobuf_dmabuf = type { i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_dma_free(%struct.videobuf_queue* %0, %struct.bttv* %1, %struct.bttv_buffer* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.bttv_buffer*, align 8
  %7 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.bttv* %1, %struct.bttv** %5, align 8
  store %struct.bttv_buffer* %2, %struct.bttv_buffer** %6, align 8
  %8 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %9 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %8, i32 0, i32 0
  %10 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_5__* %9)
  store %struct.videobuf_dmabuf* %10, %struct.videobuf_dmabuf** %7, align 8
  %11 = call i32 (...) @in_interrupt()
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %14 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %14, i32 0, i32 0
  %16 = call i32 @videobuf_waiton(%struct.videobuf_queue* %13, %struct.TYPE_5__* %15, i32 0, i32 0)
  %17 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %18 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %21 = call i32 @videobuf_dma_unmap(i32 %19, %struct.videobuf_dmabuf* %20)
  %22 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %23 = call i32 @videobuf_dma_free(%struct.videobuf_dmabuf* %22)
  %24 = load %struct.bttv*, %struct.bttv** %5, align 8
  %25 = getelementptr inbounds %struct.bttv, %struct.bttv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %28, i32 0, i32 2
  %30 = call i32 @btcx_riscmem_free(i32 %27, i32* %29)
  %31 = load %struct.bttv*, %struct.bttv** %5, align 8
  %32 = getelementptr inbounds %struct.bttv, %struct.bttv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %35, i32 0, i32 1
  %37 = call i32 @btcx_riscmem_free(i32 %34, i32* %36)
  %38 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %39 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  ret void
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_5__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @videobuf_waiton(%struct.videobuf_queue*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @videobuf_dma_unmap(i32, %struct.videobuf_dmabuf*) #1

declare dso_local i32 @videobuf_dma_free(%struct.videobuf_dmabuf*) #1

declare dso_local i32 @btcx_riscmem_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
