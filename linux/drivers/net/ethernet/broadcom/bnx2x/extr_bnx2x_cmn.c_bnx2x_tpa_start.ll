; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_tpa_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_tpa_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i64, i32, i32, %struct.bnx2x_agg_info*, %struct.eth_rx_bd*, %struct.sw_rx_bd*, %struct.bnx2x* }
%struct.bnx2x_agg_info = type { i64, i64, i64, i32, i32, i32, i8*, i8*, i8*, %struct.sw_rx_bd }
%struct.sw_rx_bd = type { i64 }
%struct.eth_rx_bd = type { i8*, i8* }
%struct.bnx2x = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.eth_fast_path_rx_cqe = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BNX2X_TPA_STOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"start of bin not in stop [%d]\0A\00", align 1
@NET_SKB_PAD = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BNX2X_TPA_ERROR = common dso_local global i64 0, align 8
@BNX2X_TPA_START = common dso_local global i64 0, align 8
@TPA_MODE_GRO = common dso_local global i64 0, align 8
@SGE_PAGES = common dso_local global i64 0, align 8
@NETIF_MSG_RX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fastpath*, i64, i64, i64, %struct.eth_fast_path_rx_cqe*)* @bnx2x_tpa_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_tpa_start(%struct.bnx2x_fastpath* %0, i64 %1, i64 %2, i64 %3, %struct.eth_fast_path_rx_cqe* %4) #0 {
  %6 = alloca %struct.bnx2x_fastpath*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eth_fast_path_rx_cqe*, align 8
  %11 = alloca %struct.bnx2x*, align 8
  %12 = alloca %struct.sw_rx_bd*, align 8
  %13 = alloca %struct.sw_rx_bd*, align 8
  %14 = alloca %struct.eth_rx_bd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bnx2x_agg_info*, align 8
  %17 = alloca %struct.sw_rx_bd*, align 8
  %18 = alloca i64, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.eth_fast_path_rx_cqe* %4, %struct.eth_fast_path_rx_cqe** %10, align 8
  %19 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %20 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %19, i32 0, i32 6
  %21 = load %struct.bnx2x*, %struct.bnx2x** %20, align 8
  store %struct.bnx2x* %21, %struct.bnx2x** %11, align 8
  %22 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %22, i32 0, i32 5
  %24 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %24, i64 %25
  store %struct.sw_rx_bd* %26, %struct.sw_rx_bd** %12, align 8
  %27 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %27, i32 0, i32 5
  %29 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %29, i64 %30
  store %struct.sw_rx_bd* %31, %struct.sw_rx_bd** %13, align 8
  %32 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %32, i32 0, i32 4
  %34 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %34, i64 %35
  store %struct.eth_rx_bd* %36, %struct.eth_rx_bd** %14, align 8
  %37 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %37, i32 0, i32 3
  %39 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %39, i64 %40
  store %struct.bnx2x_agg_info* %41, %struct.bnx2x_agg_info** %16, align 8
  %42 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %43 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %42, i32 0, i32 9
  store %struct.sw_rx_bd* %43, %struct.sw_rx_bd** %17, align 8
  %44 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %45 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BNX2X_TPA_STOP, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %5
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %5
  %53 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %17, align 8
  %58 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NET_SKB_PAD, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %63 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = call i32 @dma_map_single(i32* %56, i64 %61, i32 %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %68 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @dma_mapping_error(i32* %70, i32 %71)
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %52
  %76 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath* %76, i64 %77, i64 %78)
  %80 = load i64, i64* @BNX2X_TPA_ERROR, align 8
  %81 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %82 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %162

83:                                               ; preds = %52
  %84 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %17, align 8
  %85 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %13, align 8
  %88 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %13, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @dma_unmap_addr_set(%struct.sw_rx_bd* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @U64_HI(i32 %93)
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %14, align 8
  %97 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @U64_LO(i32 %98)
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %14, align 8
  %102 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %17, align 8
  %104 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %12, align 8
  %105 = bitcast %struct.sw_rx_bd* %103 to i8*
  %106 = bitcast %struct.sw_rx_bd* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 8, i1 false)
  %107 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %10, align 8
  %108 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le16_to_cpu(i32 %110)
  %112 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %113 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %10, align 8
  %115 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le16_to_cpu(i32 %116)
  %118 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %119 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %118, i32 0, i32 7
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* @BNX2X_TPA_START, align 8
  %121 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %122 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %10, align 8
  %124 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @le16_to_cpu(i32 %125)
  %127 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %128 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  %129 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %10, align 8
  %130 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %133 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %135 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %10, align 8
  %136 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %137 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %136, i32 0, i32 3
  %138 = call i32 @bnx2x_get_rxhash(%struct.bnx2x* %134, %struct.eth_fast_path_rx_cqe* %135, i32* %137)
  %139 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %140 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %142 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TPA_MODE_GRO, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %83
  %147 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %10, align 8
  %148 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @le16_to_cpu(i32 %149)
  %151 = ptrtoint i8* %150 to i64
  store i64 %151, i64* %18, align 8
  %152 = load i64, i64* @SGE_PAGES, align 8
  %153 = load i64, i64* %18, align 8
  %154 = udiv i64 %152, %153
  %155 = load i64, i64* %18, align 8
  %156 = mul i64 %154, %155
  %157 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %158 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %18, align 8
  %160 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %16, align 8
  %161 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %75, %146, %83
  ret void
}

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath*, i64, i64) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.sw_rx_bd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @bnx2x_get_rxhash(%struct.bnx2x*, %struct.eth_fast_path_rx_cqe*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
