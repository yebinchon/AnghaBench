; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32*, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_free_rx_resources(%struct.i40e_ring* %0) #0 {
  %2 = alloca %struct.i40e_ring*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %2, align 8
  %3 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %4 = call i32 @i40e_clean_rx_ring(%struct.i40e_ring* %3)
  %5 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %5, i32 0, i32 7
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I40E_VSI_MAIN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %13, i32 0, i32 6
  %15 = call i32 @xdp_rxq_info_unreg(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %16
  %30 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_free_coherent(i32 %32, i32 %35, i32* %38, i32 %41)
  %43 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32 @i40e_clean_rx_ring(%struct.i40e_ring*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
