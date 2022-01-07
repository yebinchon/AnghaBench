; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_queue = type { i32, i32*, i32, i32*, i32*, %struct.hva_ctx* }

@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@hva_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_ctx*, %struct.vb2_queue*)* @queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_init(%struct.hva_ctx* %0, %struct.vb2_queue* %1) #0 {
  %3 = alloca %struct.hva_ctx*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  store %struct.hva_ctx* %0, %struct.hva_ctx** %3, align 8
  store %struct.vb2_queue* %1, %struct.vb2_queue** %4, align 8
  %5 = load i32, i32* @VB2_MMAP, align 4
  %6 = load i32, i32* @VB2_DMABUF, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 5
  store %struct.hva_ctx* %10, %struct.hva_ctx** %12, align 8
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 4
  store i32* @hva_qops, i32** %14, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 3
  store i32* @vb2_dma_contig_memops, i32** %16, align 8
  %17 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_COPY, align 4
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %27 = call i32 @vb2_queue_init(%struct.vb2_queue* %26)
  ret i32 %27
}

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
