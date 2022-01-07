; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hinic_rxq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate Rx SKB\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to map Rx DMA, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hinic_rxq*, i32*)* @rx_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rx_alloc_skb(%struct.hinic_rxq* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hinic_rxq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hinic_dev*, align 8
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hinic_rxq* %0, %struct.hinic_rxq** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.hinic_rxq*, %struct.hinic_rxq** %4, align 8
  %14 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.hinic_dev* @netdev_priv(i32 %15)
  store %struct.hinic_dev* %16, %struct.hinic_dev** %6, align 8
  %17 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %18 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %17, i32 0, i32 0
  %19 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %18, align 8
  store %struct.hinic_hwdev* %19, %struct.hinic_hwdev** %7, align 8
  %20 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %21 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %20, i32 0, i32 0
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %21, align 8
  store %struct.hinic_hwif* %22, %struct.hinic_hwif** %8, align 8
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %24 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %9, align 8
  %26 = load %struct.hinic_rxq*, %struct.hinic_rxq** %4, align 8
  %27 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hinic_rxq*, %struct.hinic_rxq** %4, align 8
  %30 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %28, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %2
  %38 = load %struct.hinic_rxq*, %struct.hinic_rxq** %4, align 8
  %39 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netdev_err(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %73

42:                                               ; preds = %2
  %43 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hinic_rxq*, %struct.hinic_rxq** %4, align 8
  %49 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i32 @dma_map_single(i32* %44, i32 %47, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @dma_mapping_error(i32* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %42
  %62 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %70

66:                                               ; preds = %42
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %3, align 8
  br label %73

70:                                               ; preds = %61
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %71)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %73

73:                                               ; preds = %70, %66, %37
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %74
}

declare dso_local %struct.hinic_dev* @netdev_priv(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
