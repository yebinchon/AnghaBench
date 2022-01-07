; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.macb_dma_desc = type { i32 }

@TX_USED = common dso_local global i32 0, align 4
@TX_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_init_rings(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.macb_dma_desc*, align 8
  store %struct.macb* %0, %struct.macb** %2, align 8
  store %struct.macb_dma_desc* null, %struct.macb_dma_desc** %4, align 8
  %5 = load %struct.macb*, %struct.macb** %2, align 8
  %6 = getelementptr inbounds %struct.macb, %struct.macb* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 0
  %9 = call i32 @macb_init_rx_ring(%struct.TYPE_3__* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.macb*, %struct.macb** %2, align 8
  %13 = getelementptr inbounds %struct.macb, %struct.macb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.macb*, %struct.macb** %2, align 8
  %18 = getelementptr inbounds %struct.macb, %struct.macb* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.macb_dma_desc* @macb_tx_desc(%struct.TYPE_3__* %20, i32 %21)
  store %struct.macb_dma_desc* %22, %struct.macb_dma_desc** %4, align 8
  %23 = load %struct.macb*, %struct.macb** %2, align 8
  %24 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %25 = call i32 @macb_set_addr(%struct.macb* %23, %struct.macb_dma_desc* %24, i32 0)
  %26 = load i32, i32* @TX_USED, align 4
  %27 = call i32 @MACB_BIT(i32 %26)
  %28 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %29 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.macb*, %struct.macb** %2, align 8
  %35 = getelementptr inbounds %struct.macb, %struct.macb* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.macb*, %struct.macb** %2, align 8
  %40 = getelementptr inbounds %struct.macb, %struct.macb* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @TX_WRAP, align 4
  %45 = call i32 @MACB_BIT(i32 %44)
  %46 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %47 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  ret void
}

declare dso_local i32 @macb_init_rx_ring(%struct.TYPE_3__*) #1

declare dso_local %struct.macb_dma_desc* @macb_tx_desc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @macb_set_addr(%struct.macb*, %struct.macb_dma_desc*, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
