; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c___wil_tx_ring_tso_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c___wil_tx_ring_tso_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i64, i32, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.wil_ring_tx_data = type { i64, i32, i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil_ring = type { i32, i32, %struct.wil_ctx*, %struct.TYPE_5__*, i32 }
%struct.wil_ctx = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64, %struct.wil_ctx*, i32* }
%struct.device = type { i32 }
%struct.wil_tx_enhanced_desc = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%union.wil_tx_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tx_ring_tso: %d bytes to ring %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"TSO: Tx ring[%2d] full. No space for %d fragments\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"TSO: process header descriptor, hdrlen %u\0A\00", align 1
@wil_tso_type_hdr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TSO: process skb head, headlen %u\0A\00", align 1
@wil_tso_type_first = common dso_local global i32 0, align 4
@wil_tso_type_lst = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"TSO: frag[%d]: len %u, descs_used %d\0A\00", align 1
@wil_tso_type_mid = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Ring[%2d] not idle %d -> %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"TSO: Tx swhead %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.wil_ring*, %struct.sk_buff*)* @__wil_tx_ring_tso_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wil_tx_ring_tso_edma(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.wil_ring* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil6210_vif*, align 8
  %8 = alloca %struct.wil_ring*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wil_ring_tx_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.device*, align 8
  %30 = alloca %struct.wil_ctx*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.wil_tx_enhanced_desc, align 4
  %33 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %34 = alloca %struct.wil_tx_enhanced_desc*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %7, align 8
  store %struct.wil_ring* %2, %struct.wil_ring** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %35 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 3
  %38 = load %struct.wil_ring*, %struct.wil_ring** %37, align 8
  %39 = ptrtoint %struct.wil_ring* %35 to i64
  %40 = ptrtoint %struct.wil_ring* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 32
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %45 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %44, i32 0, i32 2
  %46 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %46, i64 %48
  store %struct.wil_ring_tx_data* %49, %struct.wil_ring_tx_data** %11, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %13, align 4
  %56 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %57 = call i32 @wil_ring_avail_tx(%struct.wil_ring* %56)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %59 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %23, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %26, align 4
  %67 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %74 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %4
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %356

84:                                               ; preds = %4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %356

98:                                               ; preds = %84
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 129
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  switch i32 %104, label %107 [
    i32 129, label %105
    i32 128, label %106
  ]

105:                                              ; preds = %98
  store i32 1, i32* %20, align 4
  br label %110

106:                                              ; preds = %98
  store i32 0, i32* %20, align 4
  br label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %356

110:                                              ; preds = %106, %105
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %356

119:                                              ; preds = %110
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = call i32 @tcp_hdrlen(%struct.sk_buff* %120)
  store i32 %121, i32* %24, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = call i32 @skb_network_header_len(%struct.sk_buff* %122)
  store i32 %123, i32* %25, align 4
  %124 = load i32, i32* @ETH_HLEN, align 4
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %25, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %17, align 4
  %129 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* @wil_tso_type_hdr, align 4
  %139 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %24, align 4
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %26, align 4
  %145 = call i32 @wil_tx_tso_gen_desc(%struct.wil6210_priv* %132, i32* %135, i32 %136, i32 %137, i32 %138, i32* null, %struct.wil_ring* %139, %struct.sk_buff* %140, i32 %141, i32 %142, i32 %143, i32 %144, i32* %22)
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %23, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %119
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %356

151:                                              ; preds = %119
  %152 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %153 = call i32 @skb_headlen(%struct.sk_buff* %152)
  %154 = load i32, i32* %17, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %18, align 4
  %156 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %157 = load i32, i32* %18, align 4
  %158 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* %22, align 4
  %169 = add nsw i32 %167, %168
  %170 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %171 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = srem i32 %169, %172
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %151
  %177 = load i32, i32* @wil_tso_type_first, align 4
  br label %180

178:                                              ; preds = %151
  %179 = load i32, i32* @wil_tso_type_lst, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  %182 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %26, align 4
  %188 = call i32 @wil_tx_tso_gen_desc(%struct.wil6210_priv* %159, i32* %165, i32 %166, i32 %173, i32 %181, i32* null, %struct.wil_ring* %182, %struct.sk_buff* %183, i32 %184, i32 %185, i32 %186, i32 %187, i32* %22)
  store i32 %188, i32* %23, align 4
  %189 = load i32, i32* %23, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %311

192:                                              ; preds = %180
  store i32 0, i32* %16, align 4
  br label %193

193:                                              ; preds = %243, %192
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %246

197:                                              ; preds = %193
  %198 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %199 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %198)
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32* %204, i32** %27, align 8
  %205 = load i32*, i32** %27, align 8
  %206 = call i32 @skb_frag_size(i32* %205)
  store i32 %206, i32* %28, align 4
  %207 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %28, align 4
  %210 = load i32, i32* %22, align 4
  %211 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %207, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %208, i32 %209, i32 %210)
  %212 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %213 = load i32, i32* %28, align 4
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* %22, align 4
  %216 = add nsw i32 %214, %215
  %217 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %218 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = srem i32 %216, %219
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp ne i32 %221, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %197
  %226 = load i32, i32* @wil_tso_type_mid, align 4
  br label %229

227:                                              ; preds = %197
  %228 = load i32, i32* @wil_tso_type_lst, align 4
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i32 [ %226, %225 ], [ %228, %227 ]
  %231 = load i32*, i32** %27, align 8
  %232 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* %24, align 4
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %26, align 4
  %238 = call i32 @wil_tx_tso_gen_desc(%struct.wil6210_priv* %212, i32* null, i32 %213, i32 %220, i32 %230, i32* %231, %struct.wil_ring* %232, %struct.sk_buff* %233, i32 %234, i32 %235, i32 %236, i32 %237, i32* %22)
  store i32 %238, i32* %23, align 4
  %239 = load i32, i32* %23, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %229
  br label %311

242:                                              ; preds = %229
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %16, align 4
  br label %193

246:                                              ; preds = %193
  %247 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %248 = call i32 @wil_ring_used_tx(%struct.wil_ring* %247)
  store i32 %248, i32* %14, align 4
  %249 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %250 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* %22, align 4
  %255 = add nsw i32 %253, %254
  %256 = call i64 @wil_val_in_range(i32 %251, i32 %252, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %277

258:                                              ; preds = %246
  %259 = call i64 (...) @get_cycles()
  %260 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %261 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = sub nsw i64 %259, %262
  %264 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %265 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %263
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %265, align 8
  %270 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %22, align 4
  %275 = add nsw i32 %273, %274
  %276 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %270, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %271, i32 %272, i32 %275)
  br label %277

277:                                              ; preds = %258, %246
  %278 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %279 = load i32, i32* %22, align 4
  %280 = call i32 @wil_ring_advance_head(%struct.wil_ring* %278, i32 %279)
  %281 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %282 = load i32, i32* %21, align 4
  %283 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %284 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %281, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %282, i32 %285)
  %287 = call i32 (...) @wmb()
  %288 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %289 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %277
  %293 = call i32 (...) @ktime_get()
  %294 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 2
  %296 = bitcast %struct.wil_ctx** %295 to i32*
  store i32 %293, i32* %296, align 8
  br label %302

297:                                              ; preds = %277
  %298 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %299 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %298, i32 0, i32 2
  %300 = load %struct.wil_ctx*, %struct.wil_ctx** %299, align 8
  %301 = call i32 @memset(%struct.wil_ctx* %300, i32 0, i32 4)
  br label %302

302:                                              ; preds = %297, %292
  %303 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %304 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %305 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %308 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @wil_w(%struct.wil6210_priv* %303, i32 %306, i32 %309)
  store i32 0, i32* %5, align 4
  br label %356

311:                                              ; preds = %241, %191
  br label %312

312:                                              ; preds = %315, %311
  %313 = load i32, i32* %22, align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %354

315:                                              ; preds = %312
  %316 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %317 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %316)
  store %struct.device* %317, %struct.device** %29, align 8
  %318 = load i32, i32* %21, align 4
  %319 = load i32, i32* %22, align 4
  %320 = add nsw i32 %318, %319
  %321 = sub nsw i32 %320, 1
  %322 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %323 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = srem i32 %321, %324
  store i32 %325, i32* %31, align 4
  store %struct.wil_tx_enhanced_desc* %32, %struct.wil_tx_enhanced_desc** %33, align 8
  %326 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %327 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %326, i32 0, i32 3
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = load i32, i32* %31, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = bitcast i32* %333 to %struct.wil_tx_enhanced_desc*
  store %struct.wil_tx_enhanced_desc* %334, %struct.wil_tx_enhanced_desc** %34, align 8
  %335 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %33, align 8
  %336 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %34, align 8
  %337 = bitcast %struct.wil_tx_enhanced_desc* %335 to i8*
  %338 = bitcast %struct.wil_tx_enhanced_desc* %336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %337, i8* align 4 %338, i64 4, i1 false)
  %339 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %340 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %339, i32 0, i32 2
  %341 = load %struct.wil_ctx*, %struct.wil_ctx** %340, align 8
  %342 = load i32, i32* %31, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %341, i64 %343
  store %struct.wil_ctx* %344, %struct.wil_ctx** %30, align 8
  %345 = load %struct.device*, %struct.device** %29, align 8
  %346 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %33, align 8
  %347 = bitcast %struct.wil_tx_enhanced_desc* %346 to %union.wil_tx_desc*
  %348 = load %struct.wil_ctx*, %struct.wil_ctx** %30, align 8
  %349 = call i32 @wil_tx_desc_unmap_edma(%struct.device* %345, %union.wil_tx_desc* %347, %struct.wil_ctx* %348)
  %350 = load %struct.wil_ctx*, %struct.wil_ctx** %30, align 8
  %351 = call i32 @memset(%struct.wil_ctx* %350, i32 0, i32 4)
  %352 = load i32, i32* %22, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %22, align 4
  br label %312

354:                                              ; preds = %312
  %355 = load i32, i32* %23, align 4
  store i32 %355, i32* %5, align 4
  br label %356

356:                                              ; preds = %354, %302, %148, %116, %107, %91, %81
  %357 = load i32, i32* %5, align 4
  ret i32 %357
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @wil_ring_avail_tx(%struct.wil_ring*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_err_ratelimited(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @wil_tx_tso_gen_desc(%struct.wil6210_priv*, i32*, i32, i32, i32, i32*, %struct.wil_ring*, %struct.sk_buff*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @wil_ring_used_tx(%struct.wil_ring*) #1

declare dso_local i64 @wil_val_in_range(i32, i32, i32) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @wil_ring_advance_head(%struct.wil_ring*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @memset(%struct.wil_ctx*, i32, i32) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wil_tx_desc_unmap_edma(%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
