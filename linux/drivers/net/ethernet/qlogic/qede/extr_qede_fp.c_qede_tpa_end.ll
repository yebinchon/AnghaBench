; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_fastpath = type { %struct.qede_rx_queue* }
%struct.qede_rx_queue = type { i32, i32, %struct.qede_agg_info* }
%struct.qede_agg_info = type { i64, i64, i32, %struct.sk_buff*, %struct.TYPE_3__, i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.eth_fast_path_rx_tpa_end_cqe = type { i64, i64, i64, i64, i64* }
%struct.TYPE_4__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Strange - TPA emd with more than a single len_list entry\0A\00", align 1
@QEDE_AGG_STATE_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Strange - TPA had %02x BDs, but SKB has only %d frags\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Strange - total packet len [cqe] is %4x but SKB has len %04x\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@QEDE_AGG_STATE_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_fastpath*, %struct.eth_fast_path_rx_tpa_end_cqe*)* @qede_tpa_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_tpa_end(%struct.qede_dev* %0, %struct.qede_fastpath* %1, %struct.eth_fast_path_rx_tpa_end_cqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_fastpath*, align 8
  %7 = alloca %struct.eth_fast_path_rx_tpa_end_cqe*, align 8
  %8 = alloca %struct.qede_rx_queue*, align 8
  %9 = alloca %struct.qede_agg_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_fastpath* %1, %struct.qede_fastpath** %6, align 8
  store %struct.eth_fast_path_rx_tpa_end_cqe* %2, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %12 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %13 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %12, i32 0, i32 0
  %14 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %13, align 8
  store %struct.qede_rx_queue* %14, %struct.qede_rx_queue** %8, align 8
  %15 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %16 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %15, i32 0, i32 2
  %17 = load %struct.qede_agg_info*, %struct.qede_agg_info** %16, align 8
  %18 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %19 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %17, i64 %20
  store %struct.qede_agg_info* %21, %struct.qede_agg_info** %9, align 8
  %22 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %23 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %22, i32 0, i32 3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %26 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %33 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %36 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %41 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_unmap_page(i32 %34, i32 %38, i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %31, %3
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %47 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %56 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %57 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %58 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %61 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %60, i32 0, i32 4
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @le16_to_cpu(i64 %66)
  %68 = call i32 @qede_fill_frag_skb(%struct.qede_dev* %55, %struct.qede_rx_queue* %56, i64 %59, i64 %67)
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %45

72:                                               ; preds = %45
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %80 = call i32 (%struct.qede_dev*, i8*, ...) @DP_ERR(%struct.qede_dev* %79, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %83 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @QEDE_AGG_STATE_START, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %163

91:                                               ; preds = %81
  %92 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %93 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %96 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = icmp ne i64 %94, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %91
  %104 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %105 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %106 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %109 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (%struct.qede_dev*, i8*, ...) @DP_ERR(%struct.qede_dev* %104, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %107, i64 %110)
  br label %112

112:                                              ; preds = %103, %91
  %113 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %117 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @le16_to_cpu(i64 %118)
  %120 = icmp ne i64 %115, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %112
  %125 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %126 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %127 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @le16_to_cpu(i64 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (%struct.qede_dev*, i8*, ...) @DP_ERR(%struct.qede_dev* %125, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %129, i64 %132)
  br label %134

134:                                              ; preds = %124, %112
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %137 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @eth_type_trans(%struct.sk_buff* %135, i32 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load %struct.eth_fast_path_rx_tpa_end_cqe*, %struct.eth_fast_path_rx_tpa_end_cqe** %7, align 8
  %146 = getelementptr inbounds %struct.eth_fast_path_rx_tpa_end_cqe, %struct.eth_fast_path_rx_tpa_end_cqe* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @le16_to_cpu(i64 %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %150 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %149)
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %153 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %155 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %156 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @qede_gro_receive(%struct.qede_dev* %152, %struct.qede_fastpath* %153, %struct.sk_buff* %154, i32 %157)
  %159 = load i8*, i8** @QEDE_AGG_STATE_NONE, align 8
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %162 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  store i32 1, i32* %4, align 4
  br label %186

163:                                              ; preds = %90
  %164 = load i8*, i8** @QEDE_AGG_STATE_NONE, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %167 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %169 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %174 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %175 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %174, i32 0, i32 4
  %176 = call i32 @qede_reuse_page(%struct.qede_rx_queue* %173, %struct.TYPE_3__* %175)
  %177 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %178 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %177, i32 0, i32 2
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %172, %163
  %180 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %181 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %180, i32 0, i32 3
  %182 = load %struct.sk_buff*, %struct.sk_buff** %181, align 8
  %183 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %182)
  %184 = load %struct.qede_agg_info*, %struct.qede_agg_info** %9, align 8
  %185 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %184, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %185, align 8
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %179, %134
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @qede_fill_frag_skb(%struct.qede_dev*, %struct.qede_rx_queue*, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, ...) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @qede_gro_receive(%struct.qede_dev*, %struct.qede_fastpath*, %struct.sk_buff*, i32) #1

declare dso_local i32 @qede_reuse_page(%struct.qede_rx_queue*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
