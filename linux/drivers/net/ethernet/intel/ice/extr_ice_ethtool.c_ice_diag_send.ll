; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_diag_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_diag_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i64, i64, i32, i32, %struct.ice_tx_buf* }
%struct.ice_tx_buf = type { %struct.ice_tx_desc* }
%struct.ice_tx_desc = type { i8*, i8* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ICE_TX_DESC_CMD_EOP = common dso_local global i32 0, align 4
@ICE_TX_DESC_CMD_RS = common dso_local global i32 0, align 4
@ICE_TX_DESC_DTYPE_DATA = common dso_local global i32 0, align 4
@ICE_TXD_QW1_CMD_S = common dso_local global i32 0, align 4
@ICE_TXD_QW1_OFFSET_S = common dso_local global i32 0, align 4
@ICE_TXD_QW1_TX_BUF_SZ_S = common dso_local global i32 0, align 4
@ICE_TXD_QW1_L2TAG1_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_ring*, i32*, i64)* @ice_diag_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_diag_send(%struct.ice_ring* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_ring*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ice_tx_desc*, align 8
  %9 = alloca %struct.ice_tx_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %13 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %14 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.ice_tx_desc* @ICE_TX_DESC(%struct.ice_ring* %12, i64 %15)
  store %struct.ice_tx_desc* %16, %struct.ice_tx_desc** %8, align 8
  %17 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %18 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %17, i32 0, i32 4
  %19 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %18, align 8
  %20 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %21 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %19, i64 %22
  store %struct.ice_tx_buf* %23, %struct.ice_tx_buf** %9, align 8
  %24 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_map_single(i32 %26, i32* %27, i64 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %32 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @dma_mapping_error(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %101

40:                                               ; preds = %3
  %41 = load i32, i32* %10, align 4
  %42 = call i8* @cpu_to_le64(i32 %41)
  %43 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %8, align 8
  %44 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @ICE_TX_DESC_CMD_EOP, align 4
  %46 = load i32, i32* @ICE_TX_DESC_CMD_RS, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @ICE_TX_DESC_DTYPE_DATA, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ICE_TXD_QW1_CMD_S, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load i32, i32* @ICE_TXD_QW1_OFFSET_S, align 4
  %54 = shl i32 0, %53
  %55 = or i32 %52, %54
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @ICE_TXD_QW1_TX_BUF_SZ_S, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %55, %59
  %61 = load i32, i32* @ICE_TXD_QW1_L2TAG1_S, align 4
  %62 = shl i32 0, %61
  %63 = or i32 %60, %62
  %64 = call i8* @cpu_to_le64(i32 %63)
  %65 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %8, align 8
  %66 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %8, align 8
  %68 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %9, align 8
  %69 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %68, i32 0, i32 0
  store %struct.ice_tx_desc* %67, %struct.ice_tx_desc** %69, align 8
  %70 = call i32 (...) @wmb()
  %71 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %72 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %76 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %79 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %40
  %83 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %84 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %40
  %86 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %87 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %90 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @writel_relaxed(i64 %88, i32 %91)
  %93 = call i32 @usleep_range(i32 1000, i32 2000)
  %94 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %95 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* @DMA_TO_DEVICE, align 4
  %100 = call i32 @dma_unmap_single(i32 %96, i32 %97, i64 %98, i32 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %85, %37
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.ice_tx_desc* @ICE_TX_DESC(%struct.ice_ring*, i64) #1

declare dso_local i32 @dma_map_single(i32, i32*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
