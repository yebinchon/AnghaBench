; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c___videobuf_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c___videobuf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.videobuf_buffer = type { %struct.videobuf_dma_sg_memory* }
%struct.videobuf_dma_sg_memory = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MAGIC_SG_MEM = common dso_local global i32 0, align 4
@MAGIC_DMABUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @__videobuf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__videobuf_sync(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.videobuf_dma_sg_memory*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %6 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %6, i32 0, i32 0
  %8 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %7, align 8
  store %struct.videobuf_dma_sg_memory* %8, %struct.videobuf_dma_sg_memory** %5, align 8
  %9 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %10 = icmp ne %struct.videobuf_dma_sg_memory* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %13 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ true, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %23 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAGIC_SG_MEM, align 4
  %26 = call i32 @MAGIC_CHECK(i32 %24, i32 %25)
  %27 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %28 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAGIC_DMABUF, align 4
  %32 = call i32 @MAGIC_CHECK(i32 %30, i32 %31)
  %33 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %34 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %37 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %41 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %45 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_sync_sg_for_cpu(i32 %35, i32 %39, i32 %43, i32 %47)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @dma_sync_sg_for_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
