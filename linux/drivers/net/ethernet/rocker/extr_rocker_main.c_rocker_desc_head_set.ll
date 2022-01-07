; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_desc_head_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_desc_head_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32 }
%struct.rocker_dma_ring_info = type { i64, i32, i64, i32 }
%struct.rocker_desc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*, %struct.rocker_dma_ring_info*, %struct.rocker_desc_info*)* @rocker_desc_head_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_desc_head_set(%struct.rocker* %0, %struct.rocker_dma_ring_info* %1, %struct.rocker_desc_info* %2) #0 {
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.rocker_dma_ring_info*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i64, align 8
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.rocker_dma_ring_info* %1, %struct.rocker_dma_ring_info** %5, align 8
  store %struct.rocker_desc_info* %2, %struct.rocker_desc_info** %6, align 8
  %8 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %9 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %12 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @__pos_inc(i64 %10, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %17 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %23 = call i32 @rocker_desc_commit(%struct.rocker_desc_info* %22)
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %26 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.rocker*, %struct.rocker** %4, align 8
  %28 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %29 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DMA_DESC_HEAD(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @rocker_write32(%struct.rocker* %27, i32 %31, i64 %32)
  ret void
}

declare dso_local i64 @__pos_inc(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rocker_desc_commit(%struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i64) #1

declare dso_local i32 @DMA_DESC_HEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
