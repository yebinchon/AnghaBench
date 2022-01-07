; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_unmap_desc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_unmap_desc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.vpdma_buf = type { i32, i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_unmap_desc_buf(%struct.vpdma_data* %0, %struct.vpdma_buf* %1) #0 {
  %3 = alloca %struct.vpdma_data*, align 8
  %4 = alloca %struct.vpdma_buf*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.vpdma_data* %0, %struct.vpdma_data** %3, align 8
  store %struct.vpdma_buf* %1, %struct.vpdma_buf** %4, align 8
  %6 = load %struct.vpdma_data*, %struct.vpdma_data** %3, align 8
  %7 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.vpdma_buf*, %struct.vpdma_buf** %4, align 8
  %11 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.vpdma_buf*, %struct.vpdma_buf** %4, align 8
  %17 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vpdma_buf*, %struct.vpdma_buf** %4, align 8
  %20 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %23 = call i32 @dma_unmap_single(%struct.device* %15, i32 %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.vpdma_buf*, %struct.vpdma_buf** %4, align 8
  %26 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
