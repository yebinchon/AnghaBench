; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_dma = type { %struct.TYPE_4__, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xvip_dma_cleanup(%struct.xvip_dma* %0) #0 {
  %2 = alloca %struct.xvip_dma*, align 8
  store %struct.xvip_dma* %0, %struct.xvip_dma** %2, align 8
  %3 = load %struct.xvip_dma*, %struct.xvip_dma** %2, align 8
  %4 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %3, i32 0, i32 2
  %5 = call i64 @video_is_registered(%struct.TYPE_5__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.xvip_dma*, %struct.xvip_dma** %2, align 8
  %9 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %8, i32 0, i32 2
  %10 = call i32 @video_unregister_device(%struct.TYPE_5__* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.xvip_dma*, %struct.xvip_dma** %2, align 8
  %13 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.xvip_dma*, %struct.xvip_dma** %2, align 8
  %18 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dma_release_channel(i64 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.xvip_dma*, %struct.xvip_dma** %2, align 8
  %23 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @media_entity_cleanup(i32* %24)
  %26 = load %struct.xvip_dma*, %struct.xvip_dma** %2, align 8
  %27 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %26, i32 0, i32 1
  %28 = call i32 @mutex_destroy(i32* %27)
  %29 = load %struct.xvip_dma*, %struct.xvip_dma** %2, align 8
  %30 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_destroy(i32* %31)
  ret void
}

declare dso_local i64 @video_is_registered(%struct.TYPE_5__*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
