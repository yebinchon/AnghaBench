; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_des_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_des_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i64, %struct.atl1c_rrd_ring, %struct.atl1c_rfd_ring, %struct.atl1c_hw }
%struct.atl1c_rrd_ring = type { i32, i32 }
%struct.atl1c_rfd_ring = type { i32, i32 }
%struct.atl1c_hw = type { i64 }
%struct.atl1c_tpd_ring = type { i32, i32 }

@REG_TX_BASE_ADDR_HI = common dso_local global i32 0, align 4
@atl1c_trans_normal = common dso_local global i64 0, align 8
@AT_DMA_HI_ADDR_MASK = common dso_local global i32 0, align 4
@REG_TPD_PRI0_ADDR_LO = common dso_local global i32 0, align 4
@AT_DMA_LO_ADDR_MASK = common dso_local global i32 0, align 4
@REG_TPD_PRI1_ADDR_LO = common dso_local global i32 0, align 4
@atl1c_trans_high = common dso_local global i64 0, align 8
@REG_TPD_RING_SIZE = common dso_local global i32 0, align 4
@TPD_RING_SIZE_MASK = common dso_local global i32 0, align 4
@REG_RX_BASE_ADDR_HI = common dso_local global i32 0, align 4
@REG_RFD0_HEAD_ADDR_LO = common dso_local global i32 0, align 4
@REG_RFD_RING_SIZE = common dso_local global i32 0, align 4
@RFD_RING_SIZE_MASK = common dso_local global i32 0, align 4
@REG_RX_BUF_SIZE = common dso_local global i32 0, align 4
@RX_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@REG_RRD0_HEAD_ADDR_LO = common dso_local global i32 0, align 4
@REG_RRD_RING_SIZE = common dso_local global i32 0, align 4
@RRD_RING_SIZE_MASK = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i64 0, align 8
@REG_SRAM_RXF_LEN = common dso_local global i32 0, align 4
@REG_SRAM_TXF_LEN = common dso_local global i32 0, align 4
@REG_SRAM_RXF_ADDR = common dso_local global i32 0, align 4
@REG_SRAM_RFD0_INFO = common dso_local global i32 0, align 4
@REG_SRAM_TXF_ADDR = common dso_local global i32 0, align 4
@REG_SRAM_TRD_ADDR = common dso_local global i32 0, align 4
@REG_TXF_WATER_MARK = common dso_local global i32 0, align 4
@REG_RXD_DMA_CTRL = common dso_local global i32 0, align 4
@REG_LOAD_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_configure_des_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_configure_des_ring(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca %struct.atl1c_rfd_ring*, align 8
  %5 = alloca %struct.atl1c_rrd_ring*, align 8
  %6 = alloca %struct.atl1c_tpd_ring*, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %7, i32 0, i32 4
  store %struct.atl1c_hw* %8, %struct.atl1c_hw** %3, align 8
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %9, i32 0, i32 3
  store %struct.atl1c_rfd_ring* %10, %struct.atl1c_rfd_ring** %4, align 8
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %11, i32 0, i32 2
  store %struct.atl1c_rrd_ring* %12, %struct.atl1c_rrd_ring** %5, align 8
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.atl1c_tpd_ring*
  store %struct.atl1c_tpd_ring* %16, %struct.atl1c_tpd_ring** %6, align 8
  %17 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %18 = load i32, i32* @REG_TX_BASE_ADDR_HI, align 4
  %19 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %6, align 8
  %20 = load i64, i64* @atl1c_trans_normal, align 8
  %21 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %19, i64 %20
  %22 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AT_DMA_HI_ADDR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 32
  %27 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %17, i32 %18, i32 %26)
  %28 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %29 = load i32, i32* @REG_TPD_PRI0_ADDR_LO, align 4
  %30 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %6, align 8
  %31 = load i64, i64* @atl1c_trans_normal, align 8
  %32 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %30, i64 %31
  %33 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %28, i32 %29, i32 %36)
  %38 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %39 = load i32, i32* @REG_TPD_PRI1_ADDR_LO, align 4
  %40 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %6, align 8
  %41 = load i64, i64* @atl1c_trans_high, align 8
  %42 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %40, i64 %41
  %43 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %38, i32 %39, i32 %46)
  %48 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %49 = load i32, i32* @REG_TPD_RING_SIZE, align 4
  %50 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %6, align 8
  %51 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %50, i64 0
  %52 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TPD_RING_SIZE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %48, i32 %49, i32 %55)
  %57 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %58 = load i32, i32* @REG_RX_BASE_ADDR_HI, align 4
  %59 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %60 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AT_DMA_HI_ADDR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = ashr i32 %63, 32
  %65 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %57, i32 %58, i32 %64)
  %66 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %67 = load i32, i32* @REG_RFD0_HEAD_ADDR_LO, align 4
  %68 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %69 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %66, i32 %67, i32 %72)
  %74 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %75 = load i32, i32* @REG_RFD_RING_SIZE, align 4
  %76 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %77 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RFD_RING_SIZE_MASK, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %74, i32 %75, i32 %80)
  %82 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %83 = load i32, i32* @REG_RX_BUF_SIZE, align 4
  %84 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RX_BUF_SIZE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %82, i32 %83, i32 %88)
  %90 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %91 = load i32, i32* @REG_RRD0_HEAD_ADDR_LO, align 4
  %92 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %5, align 8
  %93 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AT_DMA_LO_ADDR_MASK, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %90, i32 %91, i32 %96)
  %98 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %99 = load i32, i32* @REG_RRD_RING_SIZE, align 4
  %100 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %5, align 8
  %101 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RRD_RING_SIZE_MASK, align 4
  %104 = and i32 %102, %103
  %105 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %98, i32 %99, i32 %104)
  %106 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %107 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @athr_l2c_b, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %1
  %112 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %113 = load i32, i32* @REG_SRAM_RXF_LEN, align 4
  %114 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %112, i32 %113, i32 672)
  %115 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %116 = load i32, i32* @REG_SRAM_TXF_LEN, align 4
  %117 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %115, i32 %116, i32 256)
  %118 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %119 = load i32, i32* @REG_SRAM_RXF_ADDR, align 4
  %120 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %118, i32 %119, i32 43974656)
  %121 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %122 = load i32, i32* @REG_SRAM_RFD0_INFO, align 4
  %123 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %121, i32 %122, i32 46072480)
  %124 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %125 = load i32, i32* @REG_SRAM_TXF_ADDR, align 4
  %126 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %124, i32 %125, i32 62849728)
  %127 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %128 = load i32, i32* @REG_SRAM_TRD_ADDR, align 4
  %129 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %127, i32 %128, i32 64947136)
  %130 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %131 = load i32, i32* @REG_TXF_WATER_MARK, align 4
  %132 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %130, i32 %131, i32 0)
  %133 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %134 = load i32, i32* @REG_RXD_DMA_CTRL, align 4
  %135 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %133, i32 %134, i32 0)
  br label %136

136:                                              ; preds = %111, %1
  %137 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %138 = load i32, i32* @REG_LOAD_PTR, align 4
  %139 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %137, i32 %138, i32 1)
  ret void
}

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
