; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_desc_tail_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_desc_tail_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rocker_dma_ring_info = type { i64, i64, i32, %struct.rocker_desc_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rocker_desc_info* (%struct.rocker_dma_ring_info*)* @rocker_desc_tail_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rocker_desc_info* @rocker_desc_tail_get(%struct.rocker_dma_ring_info* %0) #0 {
  %2 = alloca %struct.rocker_desc_info*, align 8
  %3 = alloca %struct.rocker_dma_ring_info*, align 8
  %4 = alloca %struct.rocker_desc_info*, align 8
  store %struct.rocker_dma_ring_info* %0, %struct.rocker_dma_ring_info** %3, align 8
  %5 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %3, align 8
  %6 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %3, align 8
  %9 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.rocker_desc_info* null, %struct.rocker_desc_info** %2, align 8
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %3, align 8
  %15 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %14, i32 0, i32 3
  %16 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %15, align 8
  %17 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %3, align 8
  %18 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %16, i64 %19
  store %struct.rocker_desc_info* %20, %struct.rocker_desc_info** %4, align 8
  %21 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %22 = call i32 @rocker_desc_gen(%struct.rocker_desc_info* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  store %struct.rocker_desc_info* null, %struct.rocker_desc_info** %2, align 8
  br label %43

25:                                               ; preds = %13
  %26 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %3, align 8
  %27 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %3, align 8
  %30 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @__pos_inc(i64 %28, i32 %31)
  %33 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %3, align 8
  %34 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %36 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %41 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  store %struct.rocker_desc_info* %42, %struct.rocker_desc_info** %2, align 8
  br label %43

43:                                               ; preds = %25, %24, %12
  %44 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %2, align 8
  ret %struct.rocker_desc_info* %44
}

declare dso_local i32 @rocker_desc_gen(%struct.rocker_desc_info*) #1

declare dso_local i64 @__pos_inc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
