; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_fast_process_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_fast_process_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.octeon_droq = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 (i32, %struct.sk_buff*, i64, %union.octeon_rh*, i32*, i32)* }
%struct.sk_buff = type { i32 }
%union.octeon_rh = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.sk_buff*, %struct.octeon_skb_page_info, i64 }
%struct.octeon_skb_page_info = type { i32* }
%struct.octeon_droq_info = type { i64, %union.octeon_rh }

@.str = private unnamed_addr constant [37 x i8] c"DROQ[%d] idx: %d len:0, pkt_cnt: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@OCT_DROQ_INFO_SIZE = common dso_local global i32 0, align 4
@OCTNET_FRM_LENGTH_SIZE = common dso_local global i64 0, align 8
@CN23XX_SLI_DEF_BP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.octeon_device*, %struct.octeon_droq*, i64)* @octeon_droq_fast_process_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @octeon_droq_fast_process_packets(%struct.octeon_device* %0, %struct.octeon_droq* %1, i64 %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octeon_droq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.octeon_droq_info*, align 8
  %12 = alloca %union.octeon_rh*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.octeon_skb_page_info*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octeon_droq* %1, %struct.octeon_droq** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %316, %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %319

26:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %27 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %28 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %27, i32 0, i32 10
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %31 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.octeon_droq_info*
  store %struct.octeon_droq_info* %36, %struct.octeon_droq_info** %11, align 8
  %37 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %38 = bitcast %struct.octeon_droq_info* %37 to i32*
  %39 = call i32 @octeon_swap_8B_data(i32* %38, i32 2)
  %40 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %41 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %26
  %45 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %50 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %53 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54, i64 %55)
  %57 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %58 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %59 = bitcast %struct.octeon_droq_info* %58 to i32*
  %60 = load i32, i32* @OCT_DROQ_INFO_SIZE, align 4
  %61 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32* %59, i32 %60)
  br label %319

62:                                               ; preds = %26
  %63 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %64 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %63, i32 0, i32 1
  store %union.octeon_rh* %64, %union.octeon_rh** %12, align 8
  %65 = load i64, i64* @OCTNET_FRM_LENGTH_SIZE, align 8
  %66 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %67 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load i32, i32* @OCT_DROQ_INFO_SIZE, align 4
  %71 = call i32 @ROUNDUP8(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = load %union.octeon_rh*, %union.octeon_rh** %12, align 8
  %75 = bitcast %union.octeon_rh* %74 to %struct.TYPE_7__*
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %82 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %8, align 8
  %86 = load %union.octeon_rh*, %union.octeon_rh** %12, align 8
  %87 = call i64 @opcode_slow_path(%union.octeon_rh* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %62
  %90 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %91 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %92 = load %union.octeon_rh*, %union.octeon_rh** %12, align 8
  %93 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %94 = call i64 @octeon_droq_dispatch_pkt(%struct.octeon_device* %90, %struct.octeon_droq* %91, %union.octeon_rh* %92, %struct.octeon_droq_info* %93)
  store i64 %94, i64* %17, align 8
  %95 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %96 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %17, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %101 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @incr_index(i64 %97, i32 %99, i32 %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %106 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %109 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %293

112:                                              ; preds = %62
  %113 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %114 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %117 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp sle i64 %115, %118
  br i1 %119, label %120, label %171

120:                                              ; preds = %112
  %121 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %122 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %13, align 8
  %124 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %125 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %124, i32 0, i32 10
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %128 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.sk_buff*, %struct.sk_buff** %131, align 8
  store %struct.sk_buff* %132, %struct.sk_buff** %14, align 8
  %133 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %134 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %133, i32 0, i32 10
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %137 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store %struct.octeon_skb_page_info* %140, %struct.octeon_skb_page_info** %15, align 8
  %141 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %142 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %15, align 8
  %143 = call i64 @recv_buffer_recycle(%struct.octeon_device* %141, %struct.octeon_skb_page_info* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %120
  %146 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %15, align 8
  %147 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %145, %120
  %149 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %150 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %149, i32 0, i32 10
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %153 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %156, align 8
  %157 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %158 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %161 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @incr_index(i64 %159, i32 1, i32 %162)
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %166 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %168 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %261

171:                                              ; preds = %112
  %172 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %173 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call %struct.sk_buff* @octeon_fast_packet_alloc(i64 %174)
  store %struct.sk_buff* %175, %struct.sk_buff** %14, align 8
  store i64 0, i64* %13, align 8
  br label %176

176:                                              ; preds = %241, %171
  %177 = load i64, i64* %13, align 8
  %178 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %179 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp slt i64 %177, %180
  br i1 %181, label %182, label %260

182:                                              ; preds = %176
  %183 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %184 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %19, align 4
  %187 = load i64, i64* %13, align 8
  %188 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %189 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %193 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %191, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %182
  %197 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %11, align 8
  %198 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %13, align 8
  %201 = sub nsw i64 %199, %200
  br label %206

202:                                              ; preds = %182
  %203 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %204 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  br label %206

206:                                              ; preds = %202, %196
  %207 = phi i64 [ %201, %196 ], [ %205, %202 ]
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %18, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %210 = icmp ne %struct.sk_buff* %209, null
  br i1 %210, label %211, label %235

211:                                              ; preds = %206
  %212 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %19, align 4
  %216 = call i32 @octeon_fast_packet_next(%struct.octeon_droq* %212, %struct.sk_buff* %213, i32 %214, i32 %215)
  %217 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %218 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %217, i32 0, i32 10
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = load i32, i32* %19, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load %struct.sk_buff*, %struct.sk_buff** %223, align 8
  %225 = bitcast %struct.sk_buff* %224 to i8*
  store i8* %225, i8** %16, align 8
  %226 = load i8*, i8** %16, align 8
  %227 = call i32 @recv_buffer_fast_free(i8* %226)
  %228 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %229 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %228, i32 0, i32 10
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %234, align 8
  br label %241

235:                                              ; preds = %206
  %236 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %237 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %235, %211
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %13, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %13, align 8
  %246 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %247 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %250 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = call i8* @incr_index(i64 %248, i32 1, i32 %251)
  %253 = ptrtoint i8* %252 to i64
  %254 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %255 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  %256 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %257 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  br label %176

260:                                              ; preds = %176
  br label %261

261:                                              ; preds = %260, %148
  %262 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %263 = icmp ne %struct.sk_buff* %262, null
  br i1 %263, label %264, label %292

264:                                              ; preds = %261
  %265 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %266 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  %268 = load i32 (i32, %struct.sk_buff*, i64, %union.octeon_rh*, i32*, i32)*, i32 (i32, %struct.sk_buff*, i64, %union.octeon_rh*, i32*, i32)** %267, align 8
  %269 = icmp ne i32 (i32, %struct.sk_buff*, i64, %union.octeon_rh*, i32*, i32)* %268, null
  br i1 %269, label %270, label %288

270:                                              ; preds = %264
  %271 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %272 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 2
  %274 = load i32 (i32, %struct.sk_buff*, i64, %union.octeon_rh*, i32*, i32)*, i32 (i32, %struct.sk_buff*, i64, %union.octeon_rh*, i32*, i32)** %273, align 8
  %275 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %276 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %279 = load i64, i64* %13, align 8
  %280 = load %union.octeon_rh*, %union.octeon_rh** %12, align 8
  %281 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %282 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %281, i32 0, i32 8
  %283 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %284 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 %274(i32 %277, %struct.sk_buff* %278, i64 %279, %union.octeon_rh* %280, i32* %282, i32 %286)
  br label %291

288:                                              ; preds = %264
  %289 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %290 = call i32 @recv_buffer_free(%struct.sk_buff* %289)
  br label %291

291:                                              ; preds = %288, %270
  br label %292

292:                                              ; preds = %291, %261
  br label %293

293:                                              ; preds = %292, %89
  %294 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %295 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %298 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = icmp sge i64 %296, %299
  br i1 %300, label %301, label %315

301:                                              ; preds = %293
  %302 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %303 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %304 = call i32 @octeon_droq_refill(%struct.octeon_device* %302, %struct.octeon_droq* %303)
  store i32 %304, i32* %20, align 4
  %305 = load i32, i32* %20, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %301
  %308 = call i32 (...) @wmb()
  %309 = load i32, i32* %20, align 4
  %310 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %311 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @writel(i32 %309, i32 %312)
  br label %314

314:                                              ; preds = %307, %301
  br label %315

315:                                              ; preds = %314, %293
  br label %316

316:                                              ; preds = %315
  %317 = load i64, i64* %7, align 8
  %318 = add nsw i64 %317, 1
  store i64 %318, i64* %7, align 8
  br label %22

319:                                              ; preds = %44, %22
  %320 = load i64, i64* %7, align 8
  %321 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %322 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %321, i32 0, i32 6
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %320
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 8
  %328 = load i64, i64* %8, align 8
  %329 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %330 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %329, i32 0, i32 6
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %333, %328
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %331, align 4
  %336 = load i64, i64* %7, align 8
  store i64 %336, i64* %10, align 8
  %337 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %338 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %365

342:                                              ; preds = %319
  %343 = load i64, i64* %6, align 8
  %344 = load i64, i64* %7, align 8
  %345 = sub nsw i64 %343, %344
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %365

347:                                              ; preds = %342
  %348 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %349 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %350 = load i64, i64* %6, align 8
  %351 = load i64, i64* %7, align 8
  %352 = sub nsw i64 %350, %351
  %353 = call i32 @octeon_droq_drop_packets(%struct.octeon_device* %348, %struct.octeon_droq* %349, i64 %352)
  %354 = load i64, i64* %6, align 8
  %355 = load i64, i64* %7, align 8
  %356 = sub nsw i64 %354, %355
  %357 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %358 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %357, i32 0, i32 6
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = add nsw i64 %361, %356
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %359, align 8
  %364 = load i64, i64* %6, align 8
  store i64 %364, i64* %10, align 8
  br label %365

365:                                              ; preds = %347, %342, %319
  %366 = load i64, i64* %10, align 8
  %367 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %368 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %367, i32 0, i32 4
  %369 = call i32 @atomic_sub(i64 %366, i32* %368)
  %370 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %371 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %374 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = icmp sge i64 %372, %375
  br i1 %376, label %377, label %396

377:                                              ; preds = %365
  %378 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %379 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @readl(i32 %380)
  %382 = load i64, i64* @CN23XX_SLI_DEF_BP, align 8
  %383 = icmp slt i64 %381, %382
  br i1 %383, label %384, label %396

384:                                              ; preds = %377
  %385 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %386 = call i32 @octeon_droq_check_hw_for_pkts(%struct.octeon_droq* %385)
  %387 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %388 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %387, i32 0, i32 4
  %389 = call i32 @atomic_read(i32* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %384
  %392 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %393 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %394 = call i32 @octeon_schedule_rxq_oom_work(%struct.octeon_device* %392, %struct.octeon_droq* %393)
  br label %395

395:                                              ; preds = %391, %384
  br label %396

396:                                              ; preds = %395, %377, %365
  %397 = load i64, i64* %10, align 8
  ret i64 %397
}

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i32) #1

declare dso_local i32 @ROUNDUP8(i32) #1

declare dso_local i64 @opcode_slow_path(%union.octeon_rh*) #1

declare dso_local i64 @octeon_droq_dispatch_pkt(%struct.octeon_device*, %struct.octeon_droq*, %union.octeon_rh*, %struct.octeon_droq_info*) #1

declare dso_local i8* @incr_index(i64, i32, i32) #1

declare dso_local i64 @recv_buffer_recycle(%struct.octeon_device*, %struct.octeon_skb_page_info*) #1

declare dso_local %struct.sk_buff* @octeon_fast_packet_alloc(i64) #1

declare dso_local i32 @octeon_fast_packet_next(%struct.octeon_droq*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @recv_buffer_fast_free(i8*) #1

declare dso_local i32 @recv_buffer_free(%struct.sk_buff*) #1

declare dso_local i32 @octeon_droq_refill(%struct.octeon_device*, %struct.octeon_droq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @octeon_droq_drop_packets(%struct.octeon_device*, %struct.octeon_droq*, i64) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @octeon_droq_check_hw_for_pkts(%struct.octeon_droq*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @octeon_schedule_rxq_oom_work(%struct.octeon_device*, %struct.octeon_droq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
