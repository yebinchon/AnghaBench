; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_service_ofldq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_service_ofldq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_uld_txq = type { i32, %struct.sge_txq, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.sge_txq = type { i64, i32, %struct.TYPE_6__*, i32*, i64 }
%struct.TYPE_6__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.fw_wr_hdr = type { i32 }

@TXQ_STOP_THRES = common dso_local global i32 0, align 4
@deferred_unmap_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_uld_txq*)* @service_ofldq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_ofldq(%struct.sge_uld_txq* %0) #0 {
  %2 = alloca %struct.sge_uld_txq*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sge_txq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sge_uld_txq* %0, %struct.sge_uld_txq** %2, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %16 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %283

20:                                               ; preds = %1
  %21 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %22 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %267, %20
  %24 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %25 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %24, i32 0, i32 3
  %26 = call %struct.sk_buff* @skb_peek(%struct.TYPE_7__* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %7, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %30 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  br i1 %35, label %36, label %268

36:                                               ; preds = %34
  %37 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %38 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %42 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %45 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %44, i32 0, i32 1
  %46 = call i32 @cxgb4_reclaim_completed_tx(%struct.TYPE_8__* %43, %struct.sge_txq* %45, i32 0)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @flits_to_desc(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %53 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %52, i32 0, i32 1
  %54 = call i32 @txq_avail(%struct.sge_txq* %53)
  %55 = load i32, i32* %12, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @TXQ_STOP_THRES, align 4
  %63 = icmp slt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %36
  %68 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.fw_wr_hdr*
  %73 = call i32 @ofldtxq_stop(%struct.sge_uld_txq* %68, %struct.fw_wr_hdr* %72)
  br label %74

74:                                               ; preds = %67, %36
  %75 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %76 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %80 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  store i32* %83, i32** %3, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i64 @is_ofld_imm(%struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %90 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %89, i32 0, i32 1
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @cxgb4_inline_tx_skb(%struct.sk_buff* %88, %struct.sge_txq* %90, i32* %91)
  br label %231

93:                                               ; preds = %74
  %94 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %95 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = call i64 @cxgb4_map_skb(i32 %98, %struct.sk_buff* %99, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %93
  %107 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %108 = call i32 @txq_stop_maperr(%struct.sge_uld_txq* %107)
  %109 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %110 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = call i32 @spin_lock(i32* %111)
  br label %268

113:                                              ; preds = %93
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = call i32 @skb_transport_offset(%struct.sk_buff* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32*, i32** %3, align 8
  store i32* %116, i32** %4, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %5, align 8
  %121 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %122 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %121, i32 0, i32 1
  store %struct.sge_txq* %122, %struct.sge_txq** %8, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %125 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %124, i32 0, i32 1
  %126 = load i32*, i32** %3, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = load i32, i32* %14, align 4
  %129 = call i64 @inline_tx_skb_header(%struct.sk_buff* %123, %struct.sge_txq* %125, i8* %127, i32 %128)
  %130 = inttoptr i64 %129 to i8*
  %131 = bitcast i8* %130 to i32*
  store i32* %131, i32** %3, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = icmp ugt i32* %132, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %113
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %138 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i32*
  %141 = ptrtoint i32* %136 to i64
  %142 = ptrtoint i32* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 4
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %9, align 4
  %146 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %147 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = bitcast i32* %148 to i8*
  %150 = load i32, i32* %9, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr i8, i8* %149, i64 %151
  %153 = bitcast i8* %152 to i32*
  store i32* %153, i32** %5, align 8
  br label %154

154:                                              ; preds = %135, %113
  %155 = load i32*, i32** %3, align 8
  %156 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %157 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i32*
  %160 = icmp eq i32* %155, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %154
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %164 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i32*
  %167 = ptrtoint i32* %162 to i64
  %168 = ptrtoint i32* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %9, align 4
  %172 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %173 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = bitcast i32* %174 to i8*
  %176 = load i32, i32* %9, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr i8, i8* %175, i64 %177
  %179 = bitcast i8* %178 to i32*
  store i32* %179, i32** %5, align 8
  %180 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %181 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  %184 = bitcast i8* %183 to i32*
  store i32* %184, i32** %3, align 8
  br label %185

185:                                              ; preds = %161, %154
  %186 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %187 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %188 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %187, i32 0, i32 1
  %189 = load i32*, i32** %3, align 8
  %190 = bitcast i32* %189 to i8*
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = call i32 @cxgb4_write_sgl(%struct.sk_buff* %186, %struct.sge_txq* %188, i8* %190, i32* %191, i32 %192, i32* %196)
  %198 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %199 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = zext i32 %202 to i64
  %204 = add i64 %201, %203
  %205 = sub i64 %204, 1
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %209 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp sge i32 %207, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %185
  %214 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %215 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %218, %217
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %213, %185
  %221 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %222 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %223 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %223, i32 0, i32 2
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  store %struct.sk_buff* %221, %struct.sk_buff** %229, align 8
  br label %230

230:                                              ; preds = %220
  br label %231

231:                                              ; preds = %230, %87
  %232 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %233 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %232, i32 0, i32 1
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @txq_advance(%struct.sge_txq* %233, i32 %234)
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %10, align 4
  %238 = add i32 %237, %236
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp ugt i32 %239, 32
  %241 = zext i1 %240 to i32
  %242 = call i64 @unlikely(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %231
  %245 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %246 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %245, i32 0, i32 2
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %249 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %248, i32 0, i32 1
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @cxgb4_ring_tx_db(%struct.TYPE_8__* %247, %struct.sge_txq* %249, i32 %250)
  store i32 0, i32* %10, align 4
  br label %252

252:                                              ; preds = %244, %231
  %253 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %254 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = call i32 @spin_lock(i32* %255)
  %257 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %258 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %259 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %258, i32 0, i32 3
  %260 = call i32 @__skb_unlink(%struct.sk_buff* %257, %struct.TYPE_7__* %259)
  %261 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %262 = call i64 @is_ofld_imm(%struct.sk_buff* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %252
  %265 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %266 = call i32 @kfree_skb(%struct.sk_buff* %265)
  br label %267

267:                                              ; preds = %264, %252
  br label %23

268:                                              ; preds = %106, %34
  %269 = load i32, i32* %10, align 4
  %270 = call i64 @likely(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %274 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %273, i32 0, i32 2
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %277 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %276, i32 0, i32 1
  %278 = load i32, i32* %10, align 4
  %279 = call i32 @cxgb4_ring_tx_db(%struct.TYPE_8__* %275, %struct.sge_txq* %277, i32 %278)
  br label %280

280:                                              ; preds = %272, %268
  %281 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %2, align 8
  %282 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %281, i32 0, i32 0
  store i32 0, i32* %282, align 8
  br label %283

283:                                              ; preds = %280, %19
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cxgb4_reclaim_completed_tx(%struct.TYPE_8__*, %struct.sge_txq*, i32) #1

declare dso_local i32 @flits_to_desc(i32) #1

declare dso_local i32 @txq_avail(%struct.sge_txq*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ofldtxq_stop(%struct.sge_uld_txq*, %struct.fw_wr_hdr*) #1

declare dso_local i64 @is_ofld_imm(%struct.sk_buff*) #1

declare dso_local i32 @cxgb4_inline_tx_skb(%struct.sk_buff*, %struct.sge_txq*, i32*) #1

declare dso_local i64 @cxgb4_map_skb(i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @txq_stop_maperr(%struct.sge_uld_txq*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @inline_tx_skb_header(%struct.sk_buff*, %struct.sge_txq*, i8*, i32) #1

declare dso_local i32 @cxgb4_write_sgl(%struct.sk_buff*, %struct.sge_txq*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @txq_advance(%struct.sge_txq*, i32) #1

declare dso_local i32 @cxgb4_ring_tx_db(%struct.TYPE_8__*, %struct.sge_txq*, i32) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.TYPE_7__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
