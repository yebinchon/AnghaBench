; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_desc_offload_setup_tso_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_desc_offload_setup_tso_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_tx_enhanced_desc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@DMA_CFG_DESC_TX_0_L4_LENGTH_MSK = common dso_local global i32 0, align 4
@WIL_EDMA_DESC_TX_CFG_EOP_POS = common dso_local global i32 0, align 4
@WIL_EDMA_DESC_TX_CFG_TSO_DESC_TYPE_POS = common dso_local global i32 0, align 4
@WIL_EDMA_DESC_TX_CFG_SEG_EN_POS = common dso_local global i32 0, align 4
@WIL_EDMA_DESC_TX_CFG_INSERT_IP_CHKSUM_POS = common dso_local global i32 0, align 4
@WIL_EDMA_DESC_TX_CFG_INSERT_TCP_CHKSUM_POS = common dso_local global i32 0, align 4
@WIL_EDMA_DESC_TX_CFG_PSEUDO_HEADER_CALC_EN_POS = common dso_local global i32 0, align 4
@WIL_EDMA_DESC_TX_CFG_L4_TYPE_POS = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_OFFLOAD_CFG_L3T_IPV4_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil_tx_enhanced_desc*, i32, i32, i32, i32, i32)* @wil_tx_desc_offload_setup_tso_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_tx_desc_offload_setup_tso_edma(%struct.wil_tx_enhanced_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wil_tx_enhanced_desc* %0, %struct.wil_tx_enhanced_desc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %14 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %12, align 4
  %21 = ashr i32 %20, 2
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %24 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @DMA_CFG_DESC_TX_0_L4_LENGTH_MSK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %32 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @WIL_EDMA_DESC_TX_CFG_EOP_POS, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @WIL_EDMA_DESC_TX_CFG_TSO_DESC_TYPE_POS, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* @WIL_EDMA_DESC_TX_CFG_SEG_EN_POS, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = or i32 %41, %43
  %45 = load i32, i32* @WIL_EDMA_DESC_TX_CFG_INSERT_IP_CHKSUM_POS, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @WIL_EDMA_DESC_TX_CFG_INSERT_TCP_CHKSUM_POS, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = or i32 %47, %49
  %51 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %52 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @WIL_EDMA_DESC_TX_CFG_PSEUDO_HEADER_CALC_EN_POS, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load i32, i32* @WIL_EDMA_DESC_TX_CFG_L4_TYPE_POS, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = or i32 %57, %59
  %61 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %62 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %68 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @ETH_HLEN, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DMA_CFG_DESC_TX_OFFLOAD_CFG_L3T_IPV4_POS, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %78 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 8
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
