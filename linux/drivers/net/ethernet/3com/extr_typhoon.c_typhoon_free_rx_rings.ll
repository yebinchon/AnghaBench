; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_free_rx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_free_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, %struct.rxbuff_ent* }
%struct.rxbuff_ent = type { i32*, i32 }

@RXENT_ENTRIES = common dso_local global i64 0, align 8
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.typhoon*)* @typhoon_free_rx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_free_rx_rings(%struct.typhoon* %0) #0 {
  %2 = alloca %struct.typhoon*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rxbuff_ent*, align 8
  store %struct.typhoon* %0, %struct.typhoon** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @RXENT_ENTRIES, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %11 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %10, i32 0, i32 1
  %12 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %12, i64 %13
  store %struct.rxbuff_ent* %14, %struct.rxbuff_ent** %4, align 8
  %15 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %4, align 8
  %16 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %9
  %20 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %21 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %4, align 8
  %24 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PKT_BUF_SZ, align 4
  %27 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %28 = call i32 @pci_unmap_single(i32 %22, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %4, align 8
  %30 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dev_kfree_skb(i32* %31)
  %33 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %4, align 8
  %34 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %19, %9
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
