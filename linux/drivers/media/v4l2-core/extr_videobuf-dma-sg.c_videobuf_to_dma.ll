; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_to_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_to_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_dmabuf = type { i32 }
%struct.videobuf_buffer = type { %struct.videobuf_dma_sg_memory* }
%struct.videobuf_dma_sg_memory = type { %struct.videobuf_dmabuf, i32 }

@MAGIC_SG_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.videobuf_buffer* %0) #0 {
  %2 = alloca %struct.videobuf_buffer*, align 8
  %3 = alloca %struct.videobuf_dma_sg_memory*, align 8
  store %struct.videobuf_buffer* %0, %struct.videobuf_buffer** %2, align 8
  %4 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %4, i32 0, i32 0
  %6 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  store %struct.videobuf_dma_sg_memory* %6, %struct.videobuf_dma_sg_memory** %3, align 8
  %7 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %3, align 8
  %8 = icmp ne %struct.videobuf_dma_sg_memory* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %3, align 8
  %13 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAGIC_SG_MEM, align 4
  %16 = call i32 @MAGIC_CHECK(i32 %14, i32 %15)
  %17 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %3, align 8
  %18 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %17, i32 0, i32 0
  ret %struct.videobuf_dmabuf* %18
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
