; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_eth.c_islpci_eth_cleanup_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_eth.c_islpci_eth_cleanup_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64*, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@ISL38XX_CB_TX_DATA_LQ = common dso_local global i64 0, align 8
@ISL38XX_CB_TX_QSIZE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@SHOW_TRACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @islpci_eth_cleanup_transmit(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  br label %7

7:                                                ; preds = %55, %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @ISL38XX_CB_TX_DATA_LQ, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  %18 = icmp ne i64 %10, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %7
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ISL38XX_CB_TX_QSIZE, align 8
  %24 = urem i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %35, i64 %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %52 = call i32 @pci_unmap_single(i32 %41, i64 %47, i32 %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %53)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %55

55:                                               ; preds = %32, %19
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %7

60:                                               ; preds = %7
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
