; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32*, %struct.ftmac100_rxdes* }
%struct.ftmac100_rxdes = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftmac100*)* @ftmac100_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_alloc_buffers(%struct.ftmac100* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftmac100*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ftmac100_rxdes*, align 8
  store %struct.ftmac100* %0, %struct.ftmac100** %3, align 8
  %6 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %7 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %10 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_2__* @dma_alloc_coherent(i32 %8, i32 4, i32* %10, i32 %11)
  %13 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %14 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %13, i32 0, i32 0
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %16 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %24 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %26, align 8
  %28 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ftmac100_rxdes, %struct.ftmac100_rxdes* %27, i64 %30
  %32 = call i32 @ftmac100_rxdes_set_end_of_ring(%struct.ftmac100_rxdes* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %53, %22
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %39 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ftmac100_rxdes, %struct.ftmac100_rxdes* %42, i64 %44
  store %struct.ftmac100_rxdes* %45, %struct.ftmac100_rxdes** %5, align 8
  %46 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %47 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %5, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i64 @ftmac100_alloc_rx_page(%struct.ftmac100* %46, %struct.ftmac100_rxdes* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %67

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %58 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i32 @ftmac100_txdes_set_end_of_ring(i32* %65)
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %51
  %68 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %69 = call i32 @ftmac100_free_buffers(%struct.ftmac100* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %56, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_2__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @ftmac100_rxdes_set_end_of_ring(%struct.ftmac100_rxdes*) #1

declare dso_local i64 @ftmac100_alloc_rx_page(%struct.ftmac100*, %struct.ftmac100_rxdes*, i32) #1

declare dso_local i32 @ftmac100_txdes_set_end_of_ring(i32*) #1

declare dso_local i32 @ftmac100_free_buffers(%struct.ftmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
