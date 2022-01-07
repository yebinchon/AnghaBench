; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_delay_for_sleep_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_delay_for_sleep_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32* }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@MWIFIEX_DEF_SLEEP_COOKIE = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sleep cookie found at count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"max count reached while accessing sleep cookie\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, i64)* @mwifiex_delay_for_sleep_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_delay_for_sleep_cookie(%struct.mwifiex_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pcie_service_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load %struct.pcie_service_card*, %struct.pcie_service_card** %11, align 8
  store %struct.pcie_service_card* %12, %struct.pcie_service_card** %5, align 8
  %13 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  %14 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %13, i32 0, i32 1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %9, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %50, %2
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  %22 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = call i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %24)
  %26 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %27 = call i32 @pci_dma_sync_single_for_cpu(i32 %23, i32 %25, i32 8, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @get_unaligned_le32(i32* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MWIFIEX_DEF_SLEEP_COOKIE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %38 = load i32, i32* @INFO, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %37, i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %53

41:                                               ; preds = %20
  %42 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  %43 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = call i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %45)
  %47 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %48 = call i32 @pci_dma_sync_single_for_device(i32 %44, i32 %46, i32 8, i32 %47)
  %49 = call i32 @usleep_range(i32 20, i32 30)
  br label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %16

53:                                               ; preds = %36, %16
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %59 = load i32, i32* @INFO, align 4
  %60 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %58, i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %53
  ret void
}

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff*) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
