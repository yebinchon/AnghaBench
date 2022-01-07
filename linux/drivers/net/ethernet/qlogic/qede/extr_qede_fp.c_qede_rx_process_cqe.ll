; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_process_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_process_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, %struct.eth_slow_path_rx_cqe*)* }
%struct.eth_slow_path_rx_cqe = type { i32 }
%struct.qede_fastpath = type { i32 }
%struct.qede_rx_queue = type { i64, i64, i32, i32, i32, i32, %struct.sw_rx_data*, i32, i32 }
%struct.sw_rx_data = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.eth_fast_path_rx_reg_cqe = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%union.eth_rx_cqe = type { %struct.eth_fast_path_rx_reg_cqe }
%struct.sk_buff = type { i32 }

@ETH_RX_CQE_TYPE_SLOW_PATH = common dso_local global i32 0, align 4
@ETH_RX_CQE_TYPE_REGULAR = common dso_local global i32 0, align 4
@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8
@QEDE_CSUM_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_fastpath*, %struct.qede_rx_queue*)* @qede_rx_process_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_rx_process_cqe(%struct.qede_dev* %0, %struct.qede_fastpath* %1, %struct.qede_rx_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_fastpath*, align 8
  %7 = alloca %struct.qede_rx_queue*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca %struct.eth_fast_path_rx_reg_cqe*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.eth_rx_cqe*, align 8
  %16 = alloca %struct.sw_rx_data*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.eth_slow_path_rx_cqe*, align 8
  %21 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_fastpath* %1, %struct.qede_fastpath** %6, align 8
  store %struct.qede_rx_queue* %2, %struct.qede_rx_queue** %7, align 8
  %22 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %23 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.bpf_prog* @READ_ONCE(i32 %24)
  store %struct.bpf_prog* %25, %struct.bpf_prog** %8, align 8
  %26 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %27 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %26, i32 0, i32 7
  %28 = call i64 @qed_chain_consume(i32* %27)
  %29 = inttoptr i64 %28 to %union.eth_rx_cqe*
  store %union.eth_rx_cqe* %29, %union.eth_rx_cqe** %15, align 8
  %30 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %15, align 8
  %31 = bitcast %union.eth_rx_cqe* %30 to %struct.eth_fast_path_rx_reg_cqe*
  %32 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @ETH_RX_CQE_TYPE_SLOW_PATH, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %3
  %41 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %15, align 8
  %42 = bitcast %union.eth_rx_cqe* %41 to %struct.eth_slow_path_rx_cqe*
  store %struct.eth_slow_path_rx_cqe* %42, %struct.eth_slow_path_rx_cqe** %20, align 8
  %43 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %44 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32, %struct.eth_slow_path_rx_cqe*)*, i32 (i32, i32, %struct.eth_slow_path_rx_cqe*)** %46, align 8
  %48 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %49 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %52 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.eth_slow_path_rx_cqe*, %struct.eth_slow_path_rx_cqe** %20, align 8
  %55 = call i32 %47(i32 %50, i32 %53, %struct.eth_slow_path_rx_cqe* %54)
  store i32 0, i32* %4, align 4
  br label %216

56:                                               ; preds = %3
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @ETH_RX_CQE_TYPE_REGULAR, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %62 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %63 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %64 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %15, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @qede_rx_process_tpa_cqe(%struct.qede_dev* %61, %struct.qede_fastpath* %62, %struct.qede_rx_queue* %63, %union.eth_rx_cqe* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %216

67:                                               ; preds = %56
  %68 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %69 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %72 = and i64 %70, %71
  store i64 %72, i64* %12, align 8
  %73 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %74 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %73, i32 0, i32 6
  %75 = load %struct.sw_rx_data*, %struct.sw_rx_data** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %75, i64 %76
  store %struct.sw_rx_data* %77, %struct.sw_rx_data** %16, align 8
  %78 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %15, align 8
  %79 = bitcast %union.eth_rx_cqe* %78 to %struct.eth_fast_path_rx_reg_cqe*
  store %struct.eth_fast_path_rx_reg_cqe* %79, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %80 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %81 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @le16_to_cpu(i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %85 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %88 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  store i64 %90, i64* %11, align 8
  %91 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %92 = icmp ne %struct.bpf_prog* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %67
  %94 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %95 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %96 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %97 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %98 = load %struct.sw_rx_data*, %struct.sw_rx_data** %16, align 8
  %99 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %100 = call i32 @qede_rx_xdp(%struct.qede_dev* %94, %struct.qede_fastpath* %95, %struct.qede_rx_queue* %96, %struct.bpf_prog* %97, %struct.sw_rx_data* %98, %struct.eth_fast_path_rx_reg_cqe* %99, i64* %11, i64* %10)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %216

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %67
  %105 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %15, align 8
  %106 = bitcast %union.eth_rx_cqe* %105 to %struct.eth_fast_path_rx_reg_cqe*
  %107 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i64 @le16_to_cpu(i32 %110)
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i64 @qede_check_csum(i64 %112)
  store i64 %113, i64* %19, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* @QEDE_CSUM_ERROR, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %104
  %121 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @qede_pkt_is_ip_fragmented(%struct.eth_fast_path_rx_reg_cqe* %121, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %127 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %135

130:                                              ; preds = %120
  %131 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %132 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %104
  %137 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %138 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %139 = load %struct.sw_rx_data*, %struct.sw_rx_data** %16, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call %struct.sk_buff* @qede_rx_build_skb(%struct.qede_dev* %137, %struct.qede_rx_queue* %138, %struct.sw_rx_data* %139, i64 %140, i64 %141)
  store %struct.sk_buff* %142, %struct.sk_buff** %17, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %144 = icmp ne %struct.sk_buff* %143, null
  br i1 %144, label %155, label %145

145:                                              ; preds = %136
  %146 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %147 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %151 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %152 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @qede_recycle_rx_bd_ring(%struct.qede_rx_queue* %150, i64 %153)
  store i32 0, i32* %4, align 4
  br label %216

155:                                              ; preds = %136
  %156 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %157 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ugt i64 %158, 1
  br i1 %159, label %160, label %179

160:                                              ; preds = %155
  %161 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %162 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %164 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %165 = load i64, i64* %10, align 8
  %166 = call i64 @qede_rx_build_jumbo(%struct.qede_dev* %161, %struct.qede_rx_queue* %162, %struct.sk_buff* %163, %struct.eth_fast_path_rx_reg_cqe* %164, i64 %165)
  store i64 %166, i64* %21, align 8
  %167 = load i64, i64* %21, align 8
  %168 = icmp ugt i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %160
  %173 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %174 = load i64, i64* %21, align 8
  %175 = call i32 @qede_recycle_rx_bd_ring(%struct.qede_rx_queue* %173, i64 %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %177 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %176)
  store i32 0, i32* %4, align 4
  br label %216

178:                                              ; preds = %160
  br label %179

179:                                              ; preds = %178, %155
  %180 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %181 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %182 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @eth_type_trans(%struct.sk_buff* %180, i32 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %188 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %189 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %192 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @qede_get_rxhash(%struct.sk_buff* %187, i32 %190, i32 %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %196 = load i64, i64* %19, align 8
  %197 = call i32 @qede_set_skb_csum(%struct.sk_buff* %195, i64 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %199 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %200 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @skb_record_rx_queue(%struct.sk_buff* %198, i32 %201)
  %203 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %204 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %15, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %206 = call i32 @qede_ptp_record_rx_ts(%struct.qede_dev* %203, %union.eth_rx_cqe* %204, %struct.sk_buff* %205)
  %207 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %208 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %209 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %211 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %212 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @le16_to_cpu(i32 %213)
  %215 = call i32 @qede_skb_receive(%struct.qede_dev* %207, %struct.qede_fastpath* %208, %struct.qede_rx_queue* %209, %struct.sk_buff* %210, i64 %214)
  store i32 1, i32* %4, align 4
  br label %216

216:                                              ; preds = %179, %172, %145, %102, %60, %40
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i64 @qed_chain_consume(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qede_rx_process_tpa_cqe(%struct.qede_dev*, %struct.qede_fastpath*, %struct.qede_rx_queue*, %union.eth_rx_cqe*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @qede_rx_xdp(%struct.qede_dev*, %struct.qede_fastpath*, %struct.qede_rx_queue*, %struct.bpf_prog*, %struct.sw_rx_data*, %struct.eth_fast_path_rx_reg_cqe*, i64*, i64*) #1

declare dso_local i64 @qede_check_csum(i64) #1

declare dso_local i64 @qede_pkt_is_ip_fragmented(%struct.eth_fast_path_rx_reg_cqe*, i64) #1

declare dso_local %struct.sk_buff* @qede_rx_build_skb(%struct.qede_dev*, %struct.qede_rx_queue*, %struct.sw_rx_data*, i64, i64) #1

declare dso_local i32 @qede_recycle_rx_bd_ring(%struct.qede_rx_queue*, i64) #1

declare dso_local i64 @qede_rx_build_jumbo(%struct.qede_dev*, %struct.qede_rx_queue*, %struct.sk_buff*, %struct.eth_fast_path_rx_reg_cqe*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @qede_get_rxhash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @qede_set_skb_csum(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @qede_ptp_record_rx_ts(%struct.qede_dev*, %union.eth_rx_cqe*, %struct.sk_buff*) #1

declare dso_local i32 @qede_skb_receive(%struct.qede_dev*, %struct.qede_fastpath*, %struct.qede_rx_queue*, %struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
