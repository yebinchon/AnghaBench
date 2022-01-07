; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_map_pci_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_map_pci_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mwifiex_dma_mapping = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to map pci memory!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, %struct.sk_buff*, i64, i32)* @mwifiex_map_pci_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %0, %struct.sk_buff* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcie_service_card*, align 8
  %11 = alloca %struct.mwifiex_dma_mapping, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 0
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %13, align 8
  store %struct.pcie_service_card* %14, %struct.pcie_service_card** %10, align 8
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %10, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @pci_map_single(i32 %17, i32 %20, i64 %21, i32 %22)
  %24 = getelementptr inbounds %struct.mwifiex_dma_mapping, %struct.mwifiex_dma_mapping* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.pcie_service_card*, %struct.pcie_service_card** %10, align 8
  %26 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.mwifiex_dma_mapping, %struct.mwifiex_dma_mapping* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @pci_dma_mapping_error(i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %33, i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %41

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.mwifiex_dma_mapping, %struct.mwifiex_dma_mapping* %11, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @mwifiex_store_mapping(%struct.sk_buff* %39, %struct.mwifiex_dma_mapping* %11)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_store_mapping(%struct.sk_buff*, %struct.mwifiex_dma_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
