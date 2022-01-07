; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_add_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_add_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_tx_ring = type { i64, i64, %struct.TYPE_6__, %union.gve_tx_desc*, %struct.gve_tx_buffer_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%union.gve_tx_desc = type { i32 }
%struct.gve_tx_buffer_state = type { %struct.TYPE_7__*, %struct.sk_buff* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"hdr_nfrags should never be 0!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_tx_ring*, %struct.sk_buff*, %struct.device*)* @gve_tx_add_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_tx_add_skb(%struct.gve_tx_ring* %0, %struct.sk_buff* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.gve_tx_ring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.gve_tx_desc*, align 8
  %13 = alloca %union.gve_tx_desc*, align 8
  %14 = alloca %struct.gve_tx_buffer_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.gve_tx_ring* %0, %struct.gve_tx_ring** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @skb_is_gso(%struct.sk_buff* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %25, %28
  store i64 %29, i64* %16, align 8
  store i32 2, i32* %17, align 4
  %30 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %30, i32 0, i32 4
  %32 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %31, align 8
  %33 = load i64, i64* %16, align 8
  %34 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %32, i64 %33
  store %struct.gve_tx_buffer_state* %34, %struct.gve_tx_buffer_state** %14, align 8
  %35 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %35, i32 0, i32 3
  %37 = load %union.gve_tx_desc*, %union.gve_tx_desc** %36, align 8
  %38 = load i64, i64* %16, align 8
  %39 = getelementptr inbounds %union.gve_tx_desc, %union.gve_tx_desc* %37, i64 %38
  store %union.gve_tx_desc* %39, %union.gve_tx_desc** %12, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @tcp_hdrlen(%struct.sk_buff* %46)
  %48 = add nsw i32 %45, %47
  br label %52

49:                                               ; preds = %3
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @skb_headlen(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %48, %44 ], [ %51, %49 ]
  store i32 %53, i32* %8, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %56 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %55, i32 0, i32 1
  store %struct.sk_buff* %54, %struct.sk_buff** %56, align 8
  %57 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %57, i32 0, i32 2
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @gve_tx_fifo_pad_alloc_one_frag(%struct.TYPE_6__* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %61, i32 0, i32 2
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %67 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 0
  %70 = call i32 @gve_tx_alloc_fifo(%struct.TYPE_6__* %62, i32 %65, %struct.TYPE_7__* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %77 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %76, i32 0, i32 2
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %84 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = call i32 @gve_tx_alloc_fifo(%struct.TYPE_6__* %77, i32 %82, %struct.TYPE_7__* %88)
  store i32 %89, i32* %10, align 4
  %90 = load %union.gve_tx_desc*, %union.gve_tx_desc** %12, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 1, %94
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %98 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @gve_tx_fill_pkt_desc(%union.gve_tx_desc* %90, %struct.sk_buff* %91, i32 %92, i32 %93, i32 %95, i32 %96, i64 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %109 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %113 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %111, %120
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @skb_copy_bits(%struct.sk_buff* %107, i32 0, i64 %121, i32 %122)
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %126 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %132 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %141 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @gve_dma_sync_for_device(%struct.device* %124, i32 %130, i64 %139, i32 %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %17, align 4
  store i32 %151, i32* %20, align 4
  br label %152

152:                                              ; preds = %256, %52
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %154, %155
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %259

158:                                              ; preds = %152
  %159 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %160 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %162, %164
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = sub i64 %165, %167
  %169 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %170 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = and i64 %168, %171
  store i64 %172, i64* %19, align 8
  %173 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %174 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %173, i32 0, i32 3
  %175 = load %union.gve_tx_desc*, %union.gve_tx_desc** %174, align 8
  %176 = load i64, i64* %19, align 8
  %177 = getelementptr inbounds %union.gve_tx_desc, %union.gve_tx_desc* %175, i64 %176
  store %union.gve_tx_desc* %177, %union.gve_tx_desc** %13, align 8
  %178 = load %union.gve_tx_desc*, %union.gve_tx_desc** %13, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %182 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %181, i32 0, i32 0
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %190 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @gve_tx_fill_seg_desc(%union.gve_tx_desc* %178, %struct.sk_buff* %179, i32 %180, i32 %188, i64 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %201 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %205 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %204, i32 0, i32 0
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %203, %211
  %213 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %214 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @skb_copy_bits(%struct.sk_buff* %198, i32 %199, i64 %212, i32 %220)
  %222 = load %struct.device*, %struct.device** %6, align 8
  %223 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %224 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %230 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %229, i32 0, i32 0
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %238 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %237, i32 0, i32 0
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @gve_dma_sync_for_device(%struct.device* %222, i32 %228, i64 %236, i32 %244)
  %246 = load %struct.gve_tx_buffer_state*, %struct.gve_tx_buffer_state** %14, align 8
  %247 = getelementptr inbounds %struct.gve_tx_buffer_state, %struct.gve_tx_buffer_state* %246, i32 0, i32 0
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %18, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %18, align 4
  br label %256

256:                                              ; preds = %158
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %20, align 4
  br label %152

259:                                              ; preds = %152
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 1, %260
  ret i32 %261
}

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @gve_tx_fifo_pad_alloc_one_frag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gve_tx_alloc_fifo(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @gve_tx_fill_pkt_desc(%union.gve_tx_desc*, %struct.sk_buff*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @gve_dma_sync_for_device(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @gve_tx_fill_seg_desc(%union.gve_tx_desc*, %struct.sk_buff*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
