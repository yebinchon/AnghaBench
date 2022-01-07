; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_init_rxq_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_init_rxq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.mwifiex_pfu_buf_desc**, i64, %struct.sk_buff**, %struct.TYPE_2__ }
%struct.mwifiex_pfu_buf_desc = type { i32, i8*, i8*, i64, i8* }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32, i64 }
%struct.mwifiex_pcie_buf_desc = type { i32, i8*, i8*, i64, i8* }

@MWIFIEX_MAX_TXRX_BD = common dso_local global i32 0, align 4
@MWIFIEX_RX_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate skb for RX ring.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"info: RX ring: skb=%p len=%d data=%p buf_pa=%#x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_init_rxq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_init_rxq_ring(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mwifiex_pcie_buf_desc*, align 8
  %8 = alloca %struct.mwifiex_pfu_buf_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %11, i32 0, i32 0
  %13 = load %struct.pcie_service_card*, %struct.pcie_service_card** %12, align 8
  store %struct.pcie_service_card* %13, %struct.pcie_service_card** %4, align 8
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %15 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %16, align 8
  store %struct.mwifiex_pcie_card_reg* %17, %struct.mwifiex_pcie_card_reg** %5, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %160, %1
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @MWIFIEX_MAX_TXRX_BD, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %163

22:                                               ; preds = %18
  %23 = load i32, i32* @MWIFIEX_RX_DATA_BUF_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sk_buff* @mwifiex_alloc_dma_align_buf(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %29, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %33 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @kfree(i64 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %164

38:                                               ; preds = %22
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i32, i32* @MWIFIEX_RX_DATA_BUF_SIZE, align 4
  %42 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %43 = call i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %39, %struct.sk_buff* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %164

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i8* @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %47)
  store i8* %48, i8** %9, align 8
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %50 = load i32, i32* @INFO, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load i8*, i8** %9, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = ashr i32 %61, 32
  %63 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %49, i32 %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %51, i64 %54, i32 %57, i32 %59, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %66 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %65, i32 0, i32 2
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %67, i64 %69
  store %struct.sk_buff* %64, %struct.sk_buff** %70, align 8
  %71 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %72 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %46
  %76 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %77 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 40, %81
  %83 = getelementptr i8, i8* %79, i64 %82
  %84 = bitcast i8* %83 to %struct.mwifiex_pfu_buf_desc*
  %85 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %86 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %85, i32 0, i32 0
  %87 = load %struct.mwifiex_pfu_buf_desc**, %struct.mwifiex_pfu_buf_desc*** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %87, i64 %89
  store %struct.mwifiex_pfu_buf_desc* %84, %struct.mwifiex_pfu_buf_desc** %90, align 8
  %91 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %92 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %91, i32 0, i32 0
  %93 = load %struct.mwifiex_pfu_buf_desc**, %struct.mwifiex_pfu_buf_desc*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %93, i64 %95
  %97 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %96, align 8
  store %struct.mwifiex_pfu_buf_desc* %97, %struct.mwifiex_pfu_buf_desc** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %8, align 8
  %100 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %8, align 8
  %106 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %8, align 8
  %112 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %114 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %117 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %115, %118
  %120 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %8, align 8
  %121 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %8, align 8
  %123 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  br label %159

124:                                              ; preds = %46
  %125 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %126 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 40, %129
  %131 = add i64 %127, %130
  %132 = inttoptr i64 %131 to i8*
  %133 = bitcast i8* %132 to %struct.mwifiex_pfu_buf_desc*
  %134 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %135 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %134, i32 0, i32 0
  %136 = load %struct.mwifiex_pfu_buf_desc**, %struct.mwifiex_pfu_buf_desc*** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %136, i64 %138
  store %struct.mwifiex_pfu_buf_desc* %133, %struct.mwifiex_pfu_buf_desc** %139, align 8
  %140 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %141 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %140, i32 0, i32 0
  %142 = load %struct.mwifiex_pfu_buf_desc**, %struct.mwifiex_pfu_buf_desc*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %142, i64 %144
  %146 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %145, align 8
  %147 = bitcast %struct.mwifiex_pfu_buf_desc* %146 to %struct.mwifiex_pcie_buf_desc*
  store %struct.mwifiex_pcie_buf_desc* %147, %struct.mwifiex_pcie_buf_desc** %7, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.mwifiex_pcie_buf_desc*, %struct.mwifiex_pcie_buf_desc** %7, align 8
  %150 = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, %struct.mwifiex_pcie_buf_desc* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.mwifiex_pcie_buf_desc*, %struct.mwifiex_pcie_buf_desc** %7, align 8
  %156 = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, %struct.mwifiex_pcie_buf_desc* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load %struct.mwifiex_pcie_buf_desc*, %struct.mwifiex_pcie_buf_desc** %7, align 8
  %158 = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, %struct.mwifiex_pcie_buf_desc* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %124, %75
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %18

163:                                              ; preds = %18
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %45, %28
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.sk_buff* @mwifiex_alloc_dma_align_buf(i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i8* @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
