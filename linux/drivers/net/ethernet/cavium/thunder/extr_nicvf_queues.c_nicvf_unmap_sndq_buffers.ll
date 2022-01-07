; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_unmap_sndq_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_unmap_sndq_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sq_gather_subdesc = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_unmap_sndq_buffers(%struct.nicvf* %0, %struct.snd_queue* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.snd_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sq_gather_subdesc*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_queue*, %struct.snd_queue** %6, align 8
  %19 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_queue*, %struct.snd_queue** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @GET_SQ_DESC(%struct.snd_queue* %25, i32 %26)
  %28 = inttoptr i64 %27 to %struct.sq_gather_subdesc*
  store %struct.sq_gather_subdesc* %28, %struct.sq_gather_subdesc** %10, align 8
  %29 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %30 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.sq_gather_subdesc*, %struct.sq_gather_subdesc** %10, align 8
  %34 = getelementptr inbounds %struct.sq_gather_subdesc, %struct.sq_gather_subdesc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sq_gather_subdesc*, %struct.sq_gather_subdesc** %10, align 8
  %37 = getelementptr inbounds %struct.sq_gather_subdesc, %struct.sq_gather_subdesc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %41 = call i32 @dma_unmap_page_attrs(i32* %32, i32 %35, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %15
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %11

45:                                               ; preds = %11
  ret void
}

declare dso_local i64 @GET_SQ_DESC(%struct.snd_queue*, i32) #1

declare dso_local i32 @dma_unmap_page_attrs(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
