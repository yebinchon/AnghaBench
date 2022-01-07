; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_tx_unmap_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_tx_unmap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hinic_sge = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_dev*, %struct.sk_buff*, %struct.hinic_sge*)* @tx_unmap_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_unmap_skb(%struct.hinic_dev* %0, %struct.sk_buff* %1, %struct.hinic_sge* %2) #0 {
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hinic_sge*, align 8
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.hinic_sge* %2, %struct.hinic_sge** %6, align 8
  %11 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %11, i32 0, i32 0
  %13 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %12, align 8
  store %struct.hinic_hwdev* %13, %struct.hinic_hwdev** %7, align 8
  %14 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %15 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %14, i32 0, i32 0
  %16 = load %struct.hinic_hwif*, %struct.hinic_hwif** %15, align 8
  store %struct.hinic_hwif* %16, %struct.hinic_hwif** %8, align 8
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %18 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %9, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %45, %3
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load %struct.hinic_sge*, %struct.hinic_sge** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %30, i64 %33
  %35 = call i32 @hinic_sge_to_dma(%struct.hinic_sge* %34)
  %36 = load %struct.hinic_sge*, %struct.hinic_sge** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %36, i64 %39
  %41 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_page(i32* %29, i32 %35, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %27
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load %struct.hinic_sge*, %struct.hinic_sge** %6, align 8
  %52 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %51, i64 0
  %53 = call i32 @hinic_sge_to_dma(%struct.hinic_sge* %52)
  %54 = load %struct.hinic_sge*, %struct.hinic_sge** %6, align 8
  %55 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %54, i64 0
  %56 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(i32* %50, i32 %53, i32 %57, i32 %58)
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @hinic_sge_to_dma(%struct.hinic_sge*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
