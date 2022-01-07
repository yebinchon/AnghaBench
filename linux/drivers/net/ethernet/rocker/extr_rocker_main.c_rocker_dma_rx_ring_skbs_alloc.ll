; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skbs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skbs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.rocker*, %struct.rocker_dma_ring_info }
%struct.rocker = type { i32 }
%struct.rocker_dma_ring_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*)* @rocker_dma_rx_ring_skbs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_rx_ring_skbs_alloc(%struct.rocker_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.rocker_dma_ring_info*, align 8
  %5 = alloca %struct.rocker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  %8 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %9 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %8, i32 0, i32 1
  store %struct.rocker_dma_ring_info* %9, %struct.rocker_dma_ring_info** %4, align 8
  %10 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %11 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %10, i32 0, i32 0
  %12 = load %struct.rocker*, %struct.rocker** %11, align 8
  store %struct.rocker* %12, %struct.rocker** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %16 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %21 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %22 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @rocker_dma_rx_ring_skb_alloc(%struct.rocker_port* %20, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %36

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %56

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %51, %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.rocker*, %struct.rocker** %5, align 8
  %44 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %45 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @rocker_dma_rx_ring_skb_free(%struct.rocker* %43, i32* %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %35
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @rocker_dma_rx_ring_skb_alloc(%struct.rocker_port*, i32*) #1

declare dso_local i32 @rocker_dma_rx_ring_skb_free(%struct.rocker*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
