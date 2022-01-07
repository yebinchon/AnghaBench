; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_unmap_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_unmap_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pasemi_mac*, i32, %struct.sk_buff*, i32*)* @pasemi_mac_unmap_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_mac_unmap_tx_skb(%struct.pasemi_mac* %0, i32 %1, %struct.sk_buff* %2, i32* %3) #0 {
  %5 = alloca %struct.pasemi_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32*, align 8
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %13 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %10, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @skb_headlen(%struct.sk_buff* %19)
  %21 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %22 = call i32 @pci_unmap_single(%struct.pci_dev* %15, i32 %18, i32 %20, i32 %21)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %46, %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %11, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @skb_frag_size(i32* %42)
  %44 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %45 = call i32 @pci_unmap_page(%struct.pci_dev* %35, i32 %41, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %50)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 3
  %54 = and i32 %53, -2
  ret i32 %54
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
