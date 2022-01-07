; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_cmdrsp_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_cmdrsp_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@MWIFIEX_UPLD_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, %struct.sk_buff*)* @mwifiex_pcie_cmdrsp_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_cmdrsp_complete(%struct.mwifiex_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 1
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %15 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %14, i32 0, i32 0
  store %struct.sk_buff* %13, %struct.sk_buff** %15, align 8
  %16 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  %17 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %16, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @skb_push(%struct.sk_buff* %18, i32 %21)
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @MWIFIEX_UPLD_SIZE, align 4
  %26 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %27 = call i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %23, %struct.sk_buff* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %32

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
