; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, i32, %struct.macb_queue* }
%struct.macb_queue = type { i64, i64, i64, i64 }
%struct.macb_dma_desc = type { i32 }

@TX_USED = common dso_local global i32 0, align 4
@TX_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @gem_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_rings(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.macb_queue*, align 8
  %4 = alloca %struct.macb_dma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  store %struct.macb_dma_desc* null, %struct.macb_dma_desc** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.macb*, %struct.macb** %2, align 8
  %8 = getelementptr inbounds %struct.macb, %struct.macb* %7, i32 0, i32 2
  %9 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  store %struct.macb_queue* %9, %struct.macb_queue** %3, align 8
  br label %10

10:                                               ; preds = %54, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.macb*, %struct.macb** %2, align 8
  %13 = getelementptr inbounds %struct.macb, %struct.macb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.macb*, %struct.macb** %2, align 8
  %20 = getelementptr inbounds %struct.macb, %struct.macb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.macb_dma_desc* @macb_tx_desc(%struct.macb_queue* %24, i32 %25)
  store %struct.macb_dma_desc* %26, %struct.macb_dma_desc** %4, align 8
  %27 = load %struct.macb*, %struct.macb** %2, align 8
  %28 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %29 = call i32 @macb_set_addr(%struct.macb* %27, %struct.macb_dma_desc* %28, i32 0)
  %30 = load i32, i32* @TX_USED, align 4
  %31 = call i32 @MACB_BIT(i32 %30)
  %32 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %33 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* @TX_WRAP, align 4
  %39 = call i32 @MACB_BIT(i32 %38)
  %40 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %41 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %45 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %47 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %49 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %51 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %53 = call i32 @gem_rx_refill(%struct.macb_queue* %52)
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %58 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %57, i32 1
  store %struct.macb_queue* %58, %struct.macb_queue** %3, align 8
  br label %10

59:                                               ; preds = %10
  ret void
}

declare dso_local %struct.macb_dma_desc* @macb_tx_desc(%struct.macb_queue*, i32) #1

declare dso_local i32 @macb_set_addr(%struct.macb*, %struct.macb_dma_desc*, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i32 @gem_rx_refill(%struct.macb_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
