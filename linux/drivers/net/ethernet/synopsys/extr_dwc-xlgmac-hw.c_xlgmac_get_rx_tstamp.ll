; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_get_rx_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_get_rx_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pkt_info = type { i32, i32 }
%struct.xlgmac_dma_desc = type { i32, i32, i32 }

@RX_CONTEXT_DESC3_TSA_POS = common dso_local global i32 0, align 4
@RX_CONTEXT_DESC3_TSA_LEN = common dso_local global i32 0, align 4
@RX_CONTEXT_DESC3_TSD_POS = common dso_local global i32 0, align 4
@RX_CONTEXT_DESC3_TSD_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_RX_TSTAMP_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_RX_TSTAMP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pkt_info*, %struct.xlgmac_dma_desc*)* @xlgmac_get_rx_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_get_rx_tstamp(%struct.xlgmac_pkt_info* %0, %struct.xlgmac_dma_desc* %1) #0 {
  %3 = alloca %struct.xlgmac_pkt_info*, align 8
  %4 = alloca %struct.xlgmac_dma_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xlgmac_pkt_info* %0, %struct.xlgmac_pkt_info** %3, align 8
  store %struct.xlgmac_dma_desc* %1, %struct.xlgmac_dma_desc** %4, align 8
  %8 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %4, align 8
  %9 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RX_CONTEXT_DESC3_TSA_POS, align 4
  %12 = load i32, i32* @RX_CONTEXT_DESC3_TSA_LEN, align 4
  %13 = call i64 @XLGMAC_GET_REG_BITS_LE(i32 %10, i32 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %4, align 8
  %15 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RX_CONTEXT_DESC3_TSD_POS, align 4
  %18 = load i32, i32* @RX_CONTEXT_DESC3_TSD_LEN, align 4
  %19 = call i64 @XLGMAC_GET_REG_BITS_LE(i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %22
  %26 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %4, align 8
  %27 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %4, align 8
  %33 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, -1
  br i1 %40, label %41, label %53

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %3, align 8
  %44 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %3, align 8
  %46 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RX_PACKET_ATTRIBUTES_RX_TSTAMP_POS, align 4
  %49 = load i32, i32* @RX_PACKET_ATTRIBUTES_RX_TSTAMP_LEN, align 4
  %50 = call i32 @XLGMAC_SET_REG_BITS(i32 %47, i32 %48, i32 %49, i32 1)
  %51 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %3, align 8
  %52 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %41, %25
  br label %54

54:                                               ; preds = %53, %22, %2
  ret void
}

declare dso_local i64 @XLGMAC_GET_REG_BITS_LE(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
