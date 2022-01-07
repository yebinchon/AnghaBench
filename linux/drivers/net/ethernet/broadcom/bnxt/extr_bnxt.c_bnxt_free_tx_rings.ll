; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_tx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_tx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_tx_ring_info*, %struct.pci_dev* }
%struct.bnxt_tx_ring_info = type { %struct.bnxt_ring_struct, i32*, i32 }
%struct.bnxt_ring_struct = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_tx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_tx_rings(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.bnxt_tx_ring_info*, align 8
  %6 = alloca %struct.bnxt_ring_struct*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 3
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 2
  %12 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %11, align 8
  %13 = icmp ne %struct.bnxt_tx_ring_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %58

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %55, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 2
  %25 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %25, i64 %27
  store %struct.bnxt_tx_ring_info* %28, %struct.bnxt_tx_ring_info** %5, align 8
  %29 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %5, align 8
  %43 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32* %35, i32 %38, i32* %41, i32 %44)
  %46 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %5, align 8
  %47 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %33, %22
  %49 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %5, align 8
  %50 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %49, i32 0, i32 0
  store %struct.bnxt_ring_struct* %50, %struct.bnxt_ring_struct** %6, align 8
  %51 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %52 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %6, align 8
  %53 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %52, i32 0, i32 0
  %54 = call i32 @bnxt_free_ring(%struct.bnxt* %51, i32* %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %16

58:                                               ; preds = %14, %16
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @bnxt_free_ring(%struct.bnxt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
