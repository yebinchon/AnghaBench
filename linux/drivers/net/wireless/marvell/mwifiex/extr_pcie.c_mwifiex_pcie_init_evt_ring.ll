; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_init_evt_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_init_evt_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.mwifiex_evt_buf_desc**, i64, %struct.sk_buff** }
%struct.mwifiex_evt_buf_desc = type { i64, i64, i64 }
%struct.sk_buff = type { i64, i32 }

@MWIFIEX_MAX_EVT_BD = common dso_local global i32 0, align 4
@MAX_EVENT_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate skb for EVENT buf.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"info: EVT ring: skb=%p len=%d data=%p buf_pa=%#x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_init_evt_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_init_evt_ring(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_evt_buf_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %10, align 8
  store %struct.pcie_service_card* %11, %struct.pcie_service_card** %4, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %99, %1
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MWIFIEX_MAX_EVT_BD, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %102

16:                                               ; preds = %12
  %17 = load i32, i32* @MAX_EVENT_SIZE, align 4
  %18 = call %struct.sk_buff* @dev_alloc_skb(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %22, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %26 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @kfree(i64 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %103

31:                                               ; preds = %16
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @MAX_EVENT_SIZE, align 4
  %34 = call i32 @skb_put(%struct.sk_buff* %32, i32 %33)
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load i32, i32* @MAX_EVENT_SIZE, align 4
  %38 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %39 = call i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %35, %struct.sk_buff* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %103

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i64 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %43)
  store i64 %44, i64* %7, align 8
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %46 = load i32, i32* @EVENT, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = ashr i32 %57, 32
  %59 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %45, i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %47, i64 %50, i32 %53, i32 %55, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %62 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %61, i32 0, i32 2
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %63, i64 %65
  store %struct.sk_buff* %60, %struct.sk_buff** %66, align 8
  %67 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %68 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 24, %71
  %73 = add i64 %69, %72
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.mwifiex_evt_buf_desc*
  %76 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %77 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %76, i32 0, i32 0
  %78 = load %struct.mwifiex_evt_buf_desc**, %struct.mwifiex_evt_buf_desc*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %78, i64 %80
  store %struct.mwifiex_evt_buf_desc* %75, %struct.mwifiex_evt_buf_desc** %81, align 8
  %82 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %83 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %82, i32 0, i32 0
  %84 = load %struct.mwifiex_evt_buf_desc**, %struct.mwifiex_evt_buf_desc*** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %84, i64 %86
  %88 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %87, align 8
  store %struct.mwifiex_evt_buf_desc* %88, %struct.mwifiex_evt_buf_desc** %5, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %5, align 8
  %91 = getelementptr inbounds %struct.mwifiex_evt_buf_desc, %struct.mwifiex_evt_buf_desc* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %5, align 8
  %96 = getelementptr inbounds %struct.mwifiex_evt_buf_desc, %struct.mwifiex_evt_buf_desc* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.mwifiex_evt_buf_desc*, %struct.mwifiex_evt_buf_desc** %5, align 8
  %98 = getelementptr inbounds %struct.mwifiex_evt_buf_desc, %struct.mwifiex_evt_buf_desc* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %42
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %12

102:                                              ; preds = %12
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %41, %21
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
