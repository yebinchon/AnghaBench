; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure_des_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure_des_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, %struct.atl1e_tx_ring, %struct.atl1e_rx_ring, %struct.atl1e_hw }
%struct.atl1e_tx_ring = type { i32, i32, i64 }
%struct.atl1e_rx_ring = type { i32, %struct.atl1e_rx_page_desc* }
%struct.atl1e_rx_page_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atl1e_hw = type { i32 }

@REG_DESC_BASE_ADDR_HI = common dso_local global i32 0, align 4
@AT_DMA_HI_ADDR_MASK = common dso_local global i32 0, align 4
@REG_TPD_BASE_ADDR_LO = common dso_local global i32 0, align 4
@AT_DMA_LO_ADDR_MASK = common dso_local global i32 0, align 4
@REG_TPD_RING_SIZE = common dso_local global i32 0, align 4
@REG_HOST_TX_CMB_LO = common dso_local global i32 0, align 4
@AT_MAX_RECEIVE_QUEUE = common dso_local global i32 0, align 4
@atl1e_rx_page_hi_addr_regs = common dso_local global i32* null, align 8
@AT_PAGE_NUM_PER_QUEUE = common dso_local global i32 0, align 4
@atl1e_rx_page_lo_addr_regs = common dso_local global i32** null, align 8
@atl1e_rx_page_write_offset_regs = common dso_local global i32** null, align 8
@atl1e_rx_page_vld_regs = common dso_local global i32** null, align 8
@REG_HOST_RXFPAGE_SIZE = common dso_local global i32 0, align 4
@REG_LOAD_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_configure_des_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_configure_des_ring(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca %struct.atl1e_rx_ring*, align 8
  %5 = alloca %struct.atl1e_tx_ring*, align 8
  %6 = alloca %struct.atl1e_rx_page_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %11 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %11, i32 0, i32 3
  store %struct.atl1e_hw* %12, %struct.atl1e_hw** %3, align 8
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %13, i32 0, i32 2
  store %struct.atl1e_rx_ring* %14, %struct.atl1e_rx_ring** %4, align 8
  %15 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %15, i32 0, i32 1
  store %struct.atl1e_tx_ring* %16, %struct.atl1e_tx_ring** %5, align 8
  store %struct.atl1e_rx_page_desc* null, %struct.atl1e_rx_page_desc** %6, align 8
  %17 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %18 = load i32, i32* @REG_DESC_BASE_ADDR_HI, align 4
  %19 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AT_DMA_HI_ADDR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 32
  %25 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %17, i32 %18, i32 %24)
  %26 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %27 = load i32, i32* @REG_TPD_BASE_ADDR_LO, align 4
  %28 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %29 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %26, i32 %27, i32 %32)
  %34 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %35 = load i32, i32* @REG_TPD_RING_SIZE, align 4
  %36 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %37 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %34, i32 %35, i32 %39)
  %41 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %42 = load i32, i32* @REG_HOST_TX_CMB_LO, align 4
  %43 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %41, i32 %42, i32 %47)
  %49 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %49, i32 0, i32 1
  %51 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %50, align 8
  store %struct.atl1e_rx_page_desc* %51, %struct.atl1e_rx_page_desc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %140, %1
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @AT_MAX_RECEIVE_QUEUE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %143

56:                                               ; preds = %52
  %57 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %58 = load i32*, i32** @atl1e_rx_page_hi_addr_regs, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AT_DMA_HI_ADDR_MASK, align 4
  %67 = and i32 %65, %66
  %68 = ashr i32 %67, 32
  %69 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %57, i32 %62, i32 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %136, %56
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @AT_PAGE_NUM_PER_QUEUE, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %139

74:                                               ; preds = %70
  %75 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %75, i64 %77
  %79 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %86, i64 %88
  %90 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %10, align 4
  %97 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %98 = load i32**, i32*** @atl1e_rx_page_lo_addr_regs, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %97, i32 %106, i32 %109)
  %111 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %112 = load i32**, i32*** @atl1e_rx_page_write_offset_regs, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %123 = and i32 %121, %122
  %124 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %111, i32 %120, i32 %123)
  %125 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %126 = load i32**, i32*** @atl1e_rx_page_vld_regs, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @AT_WRITE_REGB(%struct.atl1e_hw* %125, i32 %134, i32 1)
  br label %136

136:                                              ; preds = %74
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %70

139:                                              ; preds = %70
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %52

143:                                              ; preds = %52
  %144 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %145 = load i32, i32* @REG_HOST_RXFPAGE_SIZE, align 4
  %146 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %4, align 8
  %147 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %144, i32 %145, i32 %148)
  %150 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %151 = load i32, i32* @REG_LOAD_PTR, align 4
  %152 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %150, i32 %151, i32 1)
  ret void
}

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @AT_WRITE_REGB(%struct.atl1e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
