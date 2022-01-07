; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_rx_queue = type { i64, i64, %struct.sw_rx_data*, %struct.qede_agg_info* }
%struct.sw_rx_data = type { i32, i32 }
%struct.qede_agg_info = type { i32, i32, i8*, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.eth_fast_path_rx_tpa_start_cqe = type { i64, i32, i32, i32*, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate SKB for gro\0A\00", align 1
@QEDE_AGG_STATE_ERROR = common dso_local global i8* null, align 8
@QEDE_AGG_STATE_START = common dso_local global i8* null, align 8
@PARSING_AND_ERR_FLAGS_TAG8021QEXIST_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_TAG8021QEXIST_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"Unlikely - got a TPA aggregation with more than one ext_bd_len_list entry in the TPA start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_rx_queue*, %struct.eth_fast_path_rx_tpa_start_cqe*)* @qede_tpa_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_tpa_start(%struct.qede_dev* %0, %struct.qede_rx_queue* %1, %struct.eth_fast_path_rx_tpa_start_cqe* %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_rx_queue*, align 8
  %6 = alloca %struct.eth_fast_path_rx_tpa_start_cqe*, align 8
  %7 = alloca %struct.qede_agg_info*, align 8
  %8 = alloca %struct.sw_rx_data*, align 8
  %9 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %5, align 8
  store %struct.eth_fast_path_rx_tpa_start_cqe* %2, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %10 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %11 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %10, i32 0, i32 3
  %12 = load %struct.qede_agg_info*, %struct.qede_agg_info** %11, align 8
  %13 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %14 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %12, i64 %15
  store %struct.qede_agg_info* %16, %struct.qede_agg_info** %7, align 8
  %17 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %18 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %17, i32 0, i32 2
  %19 = load %struct.sw_rx_data*, %struct.sw_rx_data** %18, align 8
  %20 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %21 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %24 = and i64 %22, %23
  %25 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %19, i64 %24
  store %struct.sw_rx_data* %25, %struct.sw_rx_data** %8, align 8
  %26 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %27 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %30 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %9, align 8
  %33 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %34 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %35 = load %struct.sw_rx_data*, %struct.sw_rx_data** %8, align 8
  %36 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %37 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @qede_tpa_rx_build_skb(%struct.qede_dev* %33, %struct.qede_rx_queue* %34, %struct.sw_rx_data* %35, i32 %39, i64 %40, i32 0)
  %42 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %43 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sw_rx_data*, %struct.sw_rx_data** %8, align 8
  %45 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %48 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.sw_rx_data*, %struct.sw_rx_data** %8, align 8
  %51 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %54 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %57 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %3
  %65 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %66 = call i32 @DP_NOTICE(%struct.qede_dev* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %68 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %70 = call i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue* %69)
  %71 = load i8*, i8** @QEDE_AGG_STATE_ERROR, align 8
  %72 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %73 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %117

74:                                               ; preds = %3
  %75 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %76 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load i8*, i8** @QEDE_AGG_STATE_START, align 8
  %78 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %79 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %81 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = load i32, i32* @PARSING_AND_ERR_FLAGS_TAG8021QEXIST_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* @PARSING_AND_ERR_FLAGS_TAG8021QEXIST_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %74
  %91 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %92 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %96 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %100

97:                                               ; preds = %74
  %98 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %99 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %102 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %105 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %108 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @qede_get_rxhash(i32 %103, i32 %106, i32 %109)
  %111 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %112 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %113 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %116 = call i32 @qede_set_gro_params(%struct.qede_dev* %111, i32 %114, %struct.eth_fast_path_rx_tpa_start_cqe* %115)
  br label %117

117:                                              ; preds = %100, %64
  %118 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %119 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @likely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %117
  %126 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %127 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %128 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %129 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %132 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = call i32 @qede_fill_frag_skb(%struct.qede_dev* %126, %struct.qede_rx_queue* %127, i64 %130, i32 %136)
  br label %138

138:                                              ; preds = %125, %117
  %139 = load %struct.eth_fast_path_rx_tpa_start_cqe*, %struct.eth_fast_path_rx_tpa_start_cqe** %6, align 8
  %140 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_start_cqe, %struct.eth_fast_path_rx_tpa_start_cqe* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %148 = call i32 @DP_ERR(%struct.qede_dev* %147, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i8*, i8** @QEDE_AGG_STATE_ERROR, align 8
  %150 = load %struct.qede_agg_info*, %struct.qede_agg_info** %7, align 8
  %151 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %146, %138
  ret void
}

declare dso_local i32 @qede_tpa_rx_build_skb(%struct.qede_dev*, %struct.qede_rx_queue*, %struct.sw_rx_data*, i32, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue*) #1

declare dso_local i32 @qede_get_rxhash(i32, i32, i32) #1

declare dso_local i32 @qede_set_gro_params(%struct.qede_dev*, i32, %struct.eth_fast_path_rx_tpa_start_cqe*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qede_fill_frag_skb(%struct.qede_dev*, %struct.qede_rx_queue*, i64, i32) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
