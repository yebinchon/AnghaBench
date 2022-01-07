; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_pass_to_producer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_pass_to_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32 }
%struct.rocker_dma_ring_info = type { i32, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*, %struct.rocker_dma_ring_info*)* @rocker_dma_ring_pass_to_producer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_dma_ring_pass_to_producer(%struct.rocker* %0, %struct.rocker_dma_ring_info* %1) #0 {
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.rocker_dma_ring_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  store %struct.rocker_dma_ring_info* %1, %struct.rocker_dma_ring_info** %4, align 8
  %6 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %7 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %12 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ true, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %36, %15
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %22 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.rocker*, %struct.rocker** %3, align 8
  %28 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %29 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %30 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @rocker_desc_head_set(%struct.rocker* %27, %struct.rocker_dma_ring_info* %28, i32* %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %41 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @rocker_desc_commit(i32* %45)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rocker_desc_head_set(%struct.rocker*, %struct.rocker_dma_ring_info*, i32*) #1

declare dso_local i32 @rocker_desc_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
