; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_clean_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_clean_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32 }
%struct.transmit_ring = type { i64, i64 }
%struct.tx_desc = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@TYPHOON_TYPE_MASK = common dso_local global i32 0, align 4
@TYPHOON_TX_DESC = common dso_local global i32 0, align 4
@TYPHOON_FRAG_DESC = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.typhoon*, %struct.transmit_ring*, i32*)* @typhoon_clean_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @typhoon_clean_tx(%struct.typhoon* %0, %struct.transmit_ring* %1, i32* %2) #0 {
  %4 = alloca %struct.typhoon*, align 8
  %5 = alloca %struct.transmit_ring*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tx_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.typhoon* %0, %struct.typhoon** %4, align 8
  store %struct.transmit_ring* %1, %struct.transmit_ring** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.transmit_ring*, %struct.transmit_ring** %5, align 8
  %15 = getelementptr inbounds %struct.transmit_ring, %struct.transmit_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %68, %3
  %18 = load i64, i64* %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load volatile i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %17
  %24 = load %struct.transmit_ring*, %struct.transmit_ring** %5, align 8
  %25 = getelementptr inbounds %struct.transmit_ring, %struct.transmit_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to %struct.tx_desc*
  store %struct.tx_desc* %29, %struct.tx_desc** %8, align 8
  %30 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %31 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TYPHOON_TYPE_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @TYPHOON_TX_DESC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %23
  %39 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %40 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = inttoptr i64 %42 to %struct.sk_buff*
  store %struct.sk_buff* %43, %struct.sk_buff** %13, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %44)
  br label %68

46:                                               ; preds = %23
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @TYPHOON_FRAG_DESC, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %52 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load volatile i32, i32* %53, align 4
  %55 = call i64 @le32_to_cpu(i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %57 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le16_to_cpu(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %61 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %66 = call i32 @pci_unmap_single(i32 %62, i64 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %50, %46
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %70 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = call i32 @typhoon_inc_tx_index(i64* %7, i32 1)
  br label %17

72:                                               ; preds = %17
  %73 = load i64, i64* %7, align 8
  ret i64 %73
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @typhoon_inc_tx_index(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
