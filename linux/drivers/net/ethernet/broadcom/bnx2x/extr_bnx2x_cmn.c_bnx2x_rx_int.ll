; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_rx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_rx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i64, i64, i64, i64, i64, i32, %union.eth_rx_cqe*, i32, i32, i32, i32, %struct.bnx2x_agg_info*, %struct.sw_rx_bd*, i32, %struct.bnx2x* }
%union.eth_rx_cqe = type { %struct.eth_fast_path_rx_cqe }
%struct.eth_fast_path_rx_cqe = type { i32, i64, i64, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bnx2x_agg_info = type { i64, i64 }
%struct.sw_rx_bd = type { i32* }
%struct.bnx2x = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@NETIF_MSG_RX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"queue[%d]: sw_comp_cons %u\0A\00", align 1
@ETH_FAST_PATH_RX_CQE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"CQE type %x  err %x  status %x  queue %x  vlan %x  len %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"calling tpa_start on queue %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"calling tpa_stop on queue %d\0A\00", align 1
@TPA_MODE_GRO = common dso_local global i64 0, align 8
@SGE_PAGE_SHIFT = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@RX_COPY_THRESH = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@ETH_RX_ERROR_FALGS = common dso_local global i32 0, align 4
@NETIF_MSG_RX_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"ERROR  flags %x  rx packet %u\0A\00", align 1
@ETH_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"ERROR  packet dropped because of alloc failure\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_PTP_PKT_SHIFT = common dso_local global i32 0, align 4
@PARSING_FLAGS_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@TPA_MODE_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_fastpath*, i32)* @bnx2x_rx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_rx_int(%struct.bnx2x_fastpath* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x_fastpath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.eth_rx_cqe*, align 8
  %15 = alloca %struct.eth_fast_path_rx_cqe*, align 8
  %16 = alloca %struct.sw_rx_bd*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.bnx2x_agg_info*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %4, align 8
  store i32 %1, i32* %5, align 4
  %30 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %30, i32 0, i32 14
  %32 = load %struct.bnx2x*, %struct.bnx2x** %31, align 8
  store %struct.bnx2x* %32, %struct.bnx2x** %6, align 8
  store i32 0, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %3, align 4
  br label %483

37:                                               ; preds = %2
  %38 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %42 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %46 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @RCQ_BD(i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %53, i32 0, i32 6
  %55 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %55, i64 %56
  store %union.eth_rx_cqe* %57, %union.eth_rx_cqe** %14, align 8
  %58 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %59 = bitcast %union.eth_rx_cqe* %58 to %struct.eth_fast_path_rx_cqe*
  store %struct.eth_fast_path_rx_cqe* %59, %struct.eth_fast_path_rx_cqe** %15, align 8
  %60 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %61 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %62 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 (i32, i8*, ...) @DP(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %451, %37
  %67 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %68 = call i64 @BNX2X_IS_CQE_COMPLETED(%struct.eth_fast_path_rx_cqe* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %461

70:                                               ; preds = %66
  store %struct.sw_rx_bd* null, %struct.sw_rx_bd** %16, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @RX_BD(i64 %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @RX_BD(i64 %73)
  store i64 %74, i64* %7, align 8
  %75 = call i32 (...) @rmb()
  %76 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %77 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @ETH_FAST_PATH_RX_CQE_TYPE, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @CQE_TYPE(i32 %83)
  %85 = load i32, i32* %18, align 4
  %86 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %87 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %90 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %94 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %98 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = call i32 (i32, i8*, ...) @DP(i32 %82, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85, i32 %88, i32 %92, i32 %96, i32 %100)
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @CQE_TYPE_SLOW(i32 %102)
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %70
  %107 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %108 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %109 = call i32 @bnx2x_sp_event(%struct.bnx2x_fastpath* %107, %union.eth_rx_cqe* %108)
  br label %440

110:                                              ; preds = %70
  %111 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %112 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %111, i32 0, i32 12
  %113 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %113, i64 %114
  store %struct.sw_rx_bd* %115, %struct.sw_rx_bd** %16, align 8
  %116 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %16, align 8
  %117 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %23, align 8
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @CQE_TYPE_FAST(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %197, label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %19, align 4
  %124 = call i64 @CQE_TYPE_START(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %128 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %29, align 8
  %130 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %131 = load i64, i64* %29, align 8
  %132 = call i32 (i32, i8*, ...) @DP(i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %131)
  %133 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %134 = load i64, i64* %29, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %138 = call i32 @bnx2x_tpa_start(%struct.bnx2x_fastpath* %133, i64 %134, i64 %135, i64 %136, %struct.eth_fast_path_rx_cqe* %137)
  br label %429

139:                                              ; preds = %122
  %140 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %141 = bitcast %union.eth_rx_cqe* %140 to %struct.TYPE_11__*
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %22, align 8
  %144 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %145 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %144, i32 0, i32 11
  %146 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %145, align 8
  %147 = load i64, i64* %22, align 8
  %148 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %146, i64 %147
  store %struct.bnx2x_agg_info* %148, %struct.bnx2x_agg_info** %26, align 8
  %149 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %150 = load i64, i64* %22, align 8
  %151 = call i32 (i32, i8*, ...) @DP(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %150)
  %152 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %153 = bitcast %union.eth_rx_cqe* %152 to %struct.TYPE_11__*
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @le16_to_cpu(i32 %155)
  %157 = sext i32 %156 to i64
  %158 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %26, align 8
  %159 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = sub i64 %157, %160
  store i64 %161, i64* %27, align 8
  %162 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %163 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TPA_MODE_GRO, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %139
  %168 = load i64, i64* %27, align 8
  %169 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %26, align 8
  %170 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %168, %171
  %173 = sub i64 %172, 1
  %174 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %26, align 8
  %175 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = udiv i64 %173, %176
  store i64 %177, i64* %28, align 8
  br label %183

178:                                              ; preds = %139
  %179 = load i64, i64* %27, align 8
  %180 = call i64 @SGE_PAGE_ALIGN(i64 %179)
  %181 = load i64, i64* @SGE_PAGE_SHIFT, align 8
  %182 = lshr i64 %180, %181
  store i64 %182, i64* %28, align 8
  br label %183

183:                                              ; preds = %178, %167
  %184 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %185 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %186 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %26, align 8
  %187 = load i64, i64* %28, align 8
  %188 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %189 = bitcast %union.eth_rx_cqe* %188 to %struct.TYPE_11__*
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @bnx2x_tpa_stop(%struct.bnx2x* %184, %struct.bnx2x_fastpath* %185, %struct.bnx2x_agg_info* %186, i64 %187, %struct.TYPE_11__* %189, i64 %190)
  %192 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %193 = load i64, i64* %28, align 8
  %194 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %195 = bitcast %union.eth_rx_cqe* %194 to %struct.TYPE_11__*
  %196 = call i32 @bnx2x_update_sge_prod(%struct.bnx2x_fastpath* %192, i64 %193, %struct.TYPE_11__* %195)
  br label %440

197:                                              ; preds = %110
  %198 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %199 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @le16_to_cpu(i32 %200)
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %20, align 8
  %203 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %204 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %21, align 8
  %206 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %207 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %206, i32 0, i32 2
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %16, align 8
  %211 = load i32, i32* @mapping, align 4
  %212 = call i32 @dma_unmap_addr(%struct.sw_rx_bd* %210, i32 %211)
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* @RX_COPY_THRESH, align 8
  %215 = add i64 %213, %214
  %216 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %217 = call i32 @dma_sync_single_for_cpu(i32* %209, i32 %212, i64 %215, i32 %216)
  %218 = load i64, i64* @NET_SKB_PAD, align 8
  %219 = load i64, i64* %21, align 8
  %220 = add i64 %219, %218
  store i64 %220, i64* %21, align 8
  %221 = load i32*, i32** %23, align 8
  %222 = load i64, i64* %21, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = call i32 @prefetch(i32* %223)
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* @ETH_RX_ERROR_FALGS, align 4
  %227 = and i32 %225, %226
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %197
  %231 = load i32, i32* @NETIF_MSG_RX_ERR, align 4
  %232 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* %18, align 4
  %235 = load i64, i64* %11, align 8
  %236 = call i32 (i32, i8*, ...) @DP(i32 %233, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %234, i64 %235)
  %237 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %238 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %239 = call %struct.TYPE_12__* @bnx2x_fp_qstats(%struct.bnx2x* %237, %struct.bnx2x_fastpath* %238)
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  br label %345

243:                                              ; preds = %197
  %244 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %245 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %244, i32 0, i32 1
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @ETH_MAX_PACKET_SIZE, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %286

251:                                              ; preds = %243
  %252 = load i64, i64* %20, align 8
  %253 = load i64, i64* @RX_COPY_THRESH, align 8
  %254 = icmp ule i64 %252, %253
  br i1 %254, label %255, label %286

255:                                              ; preds = %251
  %256 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %257 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %256, i32 0, i32 7
  %258 = load i64, i64* %20, align 8
  %259 = call %struct.sk_buff* @napi_alloc_skb(i32* %257, i64 %258)
  store %struct.sk_buff* %259, %struct.sk_buff** %17, align 8
  %260 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %261 = icmp eq %struct.sk_buff* %260, null
  br i1 %261, label %262, label %273

262:                                              ; preds = %255
  %263 = load i32, i32* @NETIF_MSG_RX_ERR, align 4
  %264 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %265 = or i32 %263, %264
  %266 = call i32 (i32, i8*, ...) @DP(i32 %265, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %267 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %268 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %269 = call %struct.TYPE_12__* @bnx2x_fp_qstats(%struct.bnx2x* %267, %struct.bnx2x_fastpath* %268)
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  br label %345

273:                                              ; preds = %255
  %274 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %275 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %23, align 8
  %278 = load i64, i64* %21, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i64, i64* %20, align 8
  %281 = call i32 @memcpy(i32 %276, i32* %279, i64 %280)
  %282 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %283 = load i64, i64* %7, align 8
  %284 = load i64, i64* %8, align 8
  %285 = call i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath* %282, i64 %283, i64 %284)
  br label %351

286:                                              ; preds = %251, %243
  %287 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %288 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %289 = load i64, i64* %8, align 8
  %290 = load i32, i32* @GFP_ATOMIC, align 4
  %291 = call i64 @bnx2x_alloc_rx_data(%struct.bnx2x* %287, %struct.bnx2x_fastpath* %288, i64 %289, i32 %290)
  %292 = icmp eq i64 %291, 0
  %293 = zext i1 %292 to i32
  %294 = call i64 @likely(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %334

296:                                              ; preds = %286
  %297 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %298 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %297, i32 0, i32 2
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %16, align 8
  %302 = load i32, i32* @mapping, align 4
  %303 = call i32 @dma_unmap_addr(%struct.sw_rx_bd* %301, i32 %302)
  %304 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %305 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %304, i32 0, i32 10
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %308 = call i32 @dma_unmap_single(i32* %300, i32 %303, i32 %306, i32 %307)
  %309 = load i32*, i32** %23, align 8
  %310 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %311 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 8
  %313 = call %struct.sk_buff* @build_skb(i32* %309, i32 %312)
  store %struct.sk_buff* %313, %struct.sk_buff** %17, align 8
  %314 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %315 = icmp ne %struct.sk_buff* %314, null
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  %318 = call i64 @unlikely(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %296
  %321 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %322 = load i32*, i32** %23, align 8
  %323 = call i32 @bnx2x_frag_free(%struct.bnx2x_fastpath* %321, i32* %322)
  %324 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %325 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %326 = call %struct.TYPE_12__* @bnx2x_fp_qstats(%struct.bnx2x* %324, %struct.bnx2x_fastpath* %325)
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 4
  br label %429

330:                                              ; preds = %296
  %331 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %332 = load i64, i64* %21, align 8
  %333 = call i32 @skb_reserve(%struct.sk_buff* %331, i64 %332)
  br label %350

334:                                              ; preds = %286
  %335 = load i32, i32* @NETIF_MSG_RX_ERR, align 4
  %336 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %337 = or i32 %335, %336
  %338 = call i32 (i32, i8*, ...) @DP(i32 %337, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %339 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %340 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %341 = call %struct.TYPE_12__* @bnx2x_fp_qstats(%struct.bnx2x* %339, %struct.bnx2x_fastpath* %340)
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %334, %262, %230
  %346 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %347 = load i64, i64* %7, align 8
  %348 = load i64, i64* %8, align 8
  %349 = call i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath* %346, i64 %347, i64 %348)
  br label %429

350:                                              ; preds = %330
  br label %351

351:                                              ; preds = %350, %273
  %352 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %353 = load i64, i64* %20, align 8
  %354 = call i32 @skb_put(%struct.sk_buff* %352, i64 %353)
  %355 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %356 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %357 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %356, i32 0, i32 1
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %357, align 8
  %359 = call i32 @eth_type_trans(%struct.sk_buff* %355, %struct.TYPE_10__* %358)
  %360 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %361 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 4
  %362 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %363 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %364 = call i32 @bnx2x_get_rxhash(%struct.bnx2x* %362, %struct.eth_fast_path_rx_cqe* %363, i32* %25)
  store i32 %364, i32* %24, align 4
  %365 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %366 = load i32, i32* %24, align 4
  %367 = load i32, i32* %25, align 4
  %368 = call i32 @skb_set_hash(%struct.sk_buff* %365, i32 %366, i32 %367)
  %369 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %370 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %369)
  %371 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %372 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %371, i32 0, i32 1
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %351
  %380 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %381 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %382 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %383 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %384 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %385 = call %struct.TYPE_12__* @bnx2x_fp_qstats(%struct.bnx2x* %383, %struct.bnx2x_fastpath* %384)
  %386 = call i32 @bnx2x_csum_validate(%struct.sk_buff* %380, %union.eth_rx_cqe* %381, %struct.bnx2x_fastpath* %382, %struct.TYPE_12__* %385)
  br label %387

387:                                              ; preds = %379, %351
  %388 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %389 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %390 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %389, i32 0, i32 8
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @skb_record_rx_queue(%struct.sk_buff* %388, i32 %391)
  %393 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %394 = bitcast %union.eth_rx_cqe* %393 to %struct.eth_fast_path_rx_cqe*
  %395 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @ETH_FAST_PATH_RX_CQE_PTP_PKT_SHIFT, align 4
  %398 = shl i32 1, %397
  %399 = and i32 %396, %398
  %400 = call i64 @unlikely(i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %387
  %403 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %404 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %405 = call i32 @bnx2x_set_rx_ts(%struct.bnx2x* %403, %struct.sk_buff* %404)
  br label %406

406:                                              ; preds = %402, %387
  %407 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %408 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @le16_to_cpu(i32 %410)
  %412 = load i32, i32* @PARSING_FLAGS_VLAN, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %424

415:                                              ; preds = %406
  %416 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %417 = load i32, i32* @ETH_P_8021Q, align 4
  %418 = call i32 @htons(i32 %417)
  %419 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %420 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @le16_to_cpu(i32 %421)
  %423 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %416, i32 %418, i32 %422)
  br label %424

424:                                              ; preds = %415, %406
  %425 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %426 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %425, i32 0, i32 7
  %427 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %428 = call i32 @napi_gro_receive(i32* %426, %struct.sk_buff* %427)
  br label %429

429:                                              ; preds = %424, %345, %320, %126
  %430 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %16, align 8
  %431 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %430, i32 0, i32 0
  store i32* null, i32** %431, align 8
  %432 = load i64, i64* %7, align 8
  %433 = call i64 @NEXT_RX_IDX(i64 %432)
  store i64 %433, i64* %7, align 8
  %434 = load i64, i64* %8, align 8
  %435 = call i64 @NEXT_RX_IDX(i64 %434)
  store i64 %435, i64* %8, align 8
  %436 = load i64, i64* %9, align 8
  %437 = call i64 @NEXT_RX_IDX(i64 %436)
  store i64 %437, i64* %9, align 8
  %438 = load i32, i32* %13, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %13, align 4
  br label %440

440:                                              ; preds = %429, %183, %106
  %441 = load i64, i64* %12, align 8
  %442 = call i64 @NEXT_RCQ_IDX(i64 %441)
  store i64 %442, i64* %12, align 8
  %443 = load i64, i64* %11, align 8
  %444 = call i64 @NEXT_RCQ_IDX(i64 %443)
  store i64 %444, i64* %11, align 8
  %445 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %15, align 8
  %446 = call i32 @BNX2X_SEED_CQE(%struct.eth_fast_path_rx_cqe* %445)
  %447 = load i32, i32* %13, align 4
  %448 = load i32, i32* %5, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %451

450:                                              ; preds = %440
  br label %461

451:                                              ; preds = %440
  %452 = load i64, i64* %11, align 8
  %453 = call i64 @RCQ_BD(i64 %452)
  store i64 %453, i64* %10, align 8
  %454 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %455 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %454, i32 0, i32 6
  %456 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %455, align 8
  %457 = load i64, i64* %10, align 8
  %458 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %456, i64 %457
  store %union.eth_rx_cqe* %458, %union.eth_rx_cqe** %14, align 8
  %459 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %14, align 8
  %460 = bitcast %union.eth_rx_cqe* %459 to %struct.eth_fast_path_rx_cqe*
  store %struct.eth_fast_path_rx_cqe* %460, %struct.eth_fast_path_rx_cqe** %15, align 8
  br label %66

461:                                              ; preds = %450, %66
  %462 = load i64, i64* %7, align 8
  %463 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %464 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %463, i32 0, i32 0
  store i64 %462, i64* %464, align 8
  %465 = load i64, i64* %9, align 8
  %466 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %467 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %466, i32 0, i32 1
  store i64 %465, i64* %467, align 8
  %468 = load i64, i64* %11, align 8
  %469 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %470 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %469, i32 0, i32 2
  store i64 %468, i64* %470, align 8
  %471 = load i64, i64* %12, align 8
  %472 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %473 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %472, i32 0, i32 3
  store i64 %471, i64* %473, align 8
  %474 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %475 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %476 = load i64, i64* %9, align 8
  %477 = load i64, i64* %12, align 8
  %478 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %479 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %478, i32 0, i32 5
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @bnx2x_update_rx_prod(%struct.bnx2x* %474, %struct.bnx2x_fastpath* %475, i64 %476, i64 %477, i32 %480)
  %482 = load i32, i32* %13, align 4
  store i32 %482, i32* %3, align 4
  br label %483

483:                                              ; preds = %461, %35
  %484 = load i32, i32* %3, align 4
  ret i32 %484
}

declare dso_local i64 @RCQ_BD(i64) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @BNX2X_IS_CQE_COMPLETED(%struct.eth_fast_path_rx_cqe*) #1

declare dso_local i64 @RX_BD(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @CQE_TYPE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CQE_TYPE_SLOW(i32) #1

declare dso_local i32 @bnx2x_sp_event(%struct.bnx2x_fastpath*, %union.eth_rx_cqe*) #1

declare dso_local i32 @CQE_TYPE_FAST(i32) #1

declare dso_local i64 @CQE_TYPE_START(i32) #1

declare dso_local i32 @bnx2x_tpa_start(%struct.bnx2x_fastpath*, i64, i64, i64, %struct.eth_fast_path_rx_cqe*) #1

declare dso_local i64 @SGE_PAGE_ALIGN(i64) #1

declare dso_local i32 @bnx2x_tpa_stop(%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.bnx2x_agg_info*, i64, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @bnx2x_update_sge_prod(%struct.bnx2x_fastpath*, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.sw_rx_bd*, i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local %struct.TYPE_12__* @bnx2x_fp_qstats(%struct.bnx2x*, %struct.bnx2x_fastpath*) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath*, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @bnx2x_alloc_rx_data(%struct.bnx2x*, %struct.bnx2x_fastpath*, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @bnx2x_frag_free(%struct.bnx2x_fastpath*, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_10__*) #1

declare dso_local i32 @bnx2x_get_rxhash(%struct.bnx2x*, %struct.eth_fast_path_rx_cqe*, i32*) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @bnx2x_csum_validate(%struct.sk_buff*, %union.eth_rx_cqe*, %struct.bnx2x_fastpath*, %struct.TYPE_12__*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @bnx2x_set_rx_ts(%struct.bnx2x*, %struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i64 @NEXT_RX_IDX(i64) #1

declare dso_local i64 @NEXT_RCQ_IDX(i64) #1

declare dso_local i32 @BNX2X_SEED_CQE(%struct.eth_fast_path_rx_cqe*) #1

declare dso_local i32 @bnx2x_update_rx_prod(%struct.bnx2x*, %struct.bnx2x_fastpath*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
