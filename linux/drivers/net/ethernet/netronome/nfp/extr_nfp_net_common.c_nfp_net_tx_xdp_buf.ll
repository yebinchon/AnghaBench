; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_xdp_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_xdp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_rx_ring = type { i32 }
%struct.nfp_net_tx_ring = type { i32, i32, %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_buf* }
%struct.nfp_net_tx_desc = type { i64, i64, i64, i8*, i8*, i32 }
%struct.nfp_net_tx_buf = type { i32, i32, i32, i64, i32 }
%struct.nfp_net_rx_buf = type { i64, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PCIE_DESC_TX_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, %struct.nfp_net_tx_ring*, %struct.nfp_net_rx_buf*, i32, i32, i32*)* @nfp_net_tx_xdp_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_tx_xdp_buf(%struct.nfp_net_dp* %0, %struct.nfp_net_rx_ring* %1, %struct.nfp_net_tx_ring* %2, %struct.nfp_net_rx_buf* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_net_dp*, align 8
  %10 = alloca %struct.nfp_net_rx_ring*, align 8
  %11 = alloca %struct.nfp_net_tx_ring*, align 8
  %12 = alloca %struct.nfp_net_rx_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nfp_net_tx_buf*, align 8
  %17 = alloca %struct.nfp_net_tx_desc*, align 8
  %18 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %9, align 8
  store %struct.nfp_net_rx_ring* %1, %struct.nfp_net_rx_ring** %10, align 8
  store %struct.nfp_net_tx_ring* %2, %struct.nfp_net_tx_ring** %11, align 8
  store %struct.nfp_net_rx_buf* %3, %struct.nfp_net_rx_buf** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %20 = call i32 @nfp_net_tx_full(%struct.nfp_net_tx_ring* %19, i32 1)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %7
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %29 = call i32 @nfp_net_xdp_complete(%struct.nfp_net_tx_ring* %28)
  %30 = load i32*, i32** %15, align 8
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %33 = call i32 @nfp_net_tx_full(%struct.nfp_net_tx_ring* %32, i32 1)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %9, align 8
  %38 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %10, align 8
  %39 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %10, align 8
  %42 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %12, align 8
  %43 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %37, i32 %40, %struct.nfp_net_rx_ring* %41, %struct.nfp_net_rx_buf* %42, i32* null)
  store i32 0, i32* %8, align 4
  br label %134

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %7
  %46 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %47 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %48 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @D_IDX(%struct.nfp_net_tx_ring* %46, i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %52 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %51, i32 0, i32 3
  %53 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %52, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %53, i64 %55
  store %struct.nfp_net_tx_buf* %56, %struct.nfp_net_tx_buf** %16, align 8
  %57 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %9, align 8
  %58 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %10, align 8
  %59 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %16, align 8
  %60 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %16, align 8
  %63 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @nfp_net_rx_give_one(%struct.nfp_net_dp* %57, %struct.nfp_net_rx_ring* %58, i32 %61, i64 %64)
  %66 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %12, align 8
  %67 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %16, align 8
  %70 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %12, align 8
  %72 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %16, align 8
  %75 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %16, align 8
  %77 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  %78 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %16, align 8
  %79 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %16, align 8
  %82 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %9, align 8
  %84 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %12, align 8
  %87 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %94 = call i32 @dma_sync_single_for_device(i32 %85, i64 %91, i32 %92, i32 %93)
  %95 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %96 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %95, i32 0, i32 2
  %97 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %97, i64 %99
  store %struct.nfp_net_tx_desc* %100, %struct.nfp_net_tx_desc** %17, align 8
  %101 = load i32, i32* @PCIE_DESC_TX_EOP, align 4
  %102 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %17, align 8
  %103 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %17, align 8
  %107 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %17, align 8
  %109 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %12, align 8
  %110 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @nfp_desc_set_dma_addr(%struct.nfp_net_tx_desc* %108, i64 %114)
  %116 = load i32, i32* %14, align 4
  %117 = call i8* @cpu_to_le16(i32 %116)
  %118 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %17, align 8
  %119 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %17, align 8
  %121 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %17, align 8
  %123 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %17, align 8
  %125 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %127 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %11, align 8
  %131 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  store i32 1, i32* %8, align 4
  br label %134

134:                                              ; preds = %45, %36
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nfp_net_tx_full(%struct.nfp_net_tx_ring*, i32) #1

declare dso_local i32 @nfp_net_xdp_complete(%struct.nfp_net_tx_ring*) #1

declare dso_local i32 @nfp_net_rx_drop(%struct.nfp_net_dp*, i32, %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_buf*, i32*) #1

declare dso_local i32 @D_IDX(%struct.nfp_net_tx_ring*, i32) #1

declare dso_local i32 @nfp_net_rx_give_one(%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, i32, i64) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nfp_desc_set_dma_addr(%struct.nfp_net_tx_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
