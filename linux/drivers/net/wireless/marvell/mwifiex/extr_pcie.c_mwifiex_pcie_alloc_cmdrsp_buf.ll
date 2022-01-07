; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_alloc_cmdrsp_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_alloc_cmdrsp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@MWIFIEX_UPLD_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to allocate skb for command response data.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_alloc_cmdrsp_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_alloc_cmdrsp_buf(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 0
  %8 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  store %struct.pcie_service_card* %8, %struct.pcie_service_card** %4, align 8
  %9 = load i32, i32* @MWIFIEX_UPLD_SIZE, align 4
  %10 = call %struct.sk_buff* @dev_alloc_skb(i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %14, i32 %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* @MWIFIEX_UPLD_SIZE, align 4
  %22 = call i32 @skb_put(%struct.sk_buff* %20, i32 %21)
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @MWIFIEX_UPLD_SIZE, align 4
  %26 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %27 = call i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %23, %struct.sk_buff* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %33 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %32, i32 0, i32 0
  store %struct.sk_buff* %31, %struct.sk_buff** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %29, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
