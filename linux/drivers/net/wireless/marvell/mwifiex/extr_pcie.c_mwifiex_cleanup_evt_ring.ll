; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_cleanup_evt_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_cleanup_evt_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.sk_buff**, %struct.mwifiex_evt_buf_desc** }
%struct.sk_buff = type { i32 }
%struct.mwifiex_evt_buf_desc = type { i32 }

@MWIFIEX_MAX_EVT_BD = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_cleanup_evt_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_cleanup_evt_ring(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.pcie_service_card*, align 8
  %4 = alloca %struct.mwifiex_evt_buf_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %53, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MWIFIEX_MAX_EVT_BD, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 1
  %17 = load %struct.mwifiex_evt_buf_desc**, %struct.mwifiex_evt_buf_desc*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %17, i64 %19
  %21 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %20, align 8
  store %struct.mwifiex_evt_buf_desc* %21, %struct.mwifiex_evt_buf_desc** %4, align 8
  %22 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %23 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %22, i32 0, i32 0
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %14
  %31 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %32 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %31, i32 0, i32 0
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %41 = call i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter* %38, %struct.sk_buff* %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %30, %14
  %45 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %46 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %45, i32 0, i32 0
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  store %struct.sk_buff* null, %struct.sk_buff** %50, align 8
  %51 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %4, align 8
  %52 = call i32 @memset(%struct.mwifiex_evt_buf_desc* %51, i32 0, i32 4)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %10

56:                                               ; preds = %10
  ret void
}

declare dso_local i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.mwifiex_evt_buf_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
