; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb_queue = type { i64, i32, %struct.macb* }
%struct.macb = type { i32, i64 }
%struct.macb_dma_desc = type { i32, i64 }

@RX_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb_queue*)* @macb_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_init_rx_ring(%struct.macb_queue* %0) #0 {
  %2 = alloca %struct.macb_queue*, align 8
  %3 = alloca %struct.macb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.macb_dma_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.macb_queue* %0, %struct.macb_queue** %2, align 8
  %7 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %8 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %7, i32 0, i32 2
  %9 = load %struct.macb*, %struct.macb** %8, align 8
  store %struct.macb* %9, %struct.macb** %3, align 8
  store %struct.macb_dma_desc* null, %struct.macb_dma_desc** %5, align 8
  %10 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %11 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.macb*, %struct.macb** %3, align 8
  %16 = getelementptr inbounds %struct.macb, %struct.macb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.macb_dma_desc* @macb_rx_desc(%struct.macb_queue* %20, i32 %21)
  store %struct.macb_dma_desc* %22, %struct.macb_dma_desc** %5, align 8
  %23 = load %struct.macb*, %struct.macb** %3, align 8
  %24 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @macb_set_addr(%struct.macb* %23, %struct.macb_dma_desc* %24, i32 %25)
  %27 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %5, align 8
  %28 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.macb*, %struct.macb** %3, align 8
  %30 = getelementptr inbounds %struct.macb, %struct.macb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load i32, i32* @RX_WRAP, align 4
  %41 = call i32 @MACB_BIT(i32 %40)
  %42 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %5, align 8
  %43 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %47 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local %struct.macb_dma_desc* @macb_rx_desc(%struct.macb_queue*, i32) #1

declare dso_local i32 @macb_set_addr(%struct.macb*, %struct.macb_dma_desc*, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
